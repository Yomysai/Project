package servlet;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import Beans.Book;
import Beans.Categorie;
import Beans.Status;
import Beans.Subcategory;
import Beans.User;
import dao.BookDao;
import dao.CategorieDao;
import dao.GenreDao;
import dao.StatusDao;

/**
 * Servlet implementation class BookAdd
 */
@MultipartConfig
@WebServlet("/bookAdd")
public class BookAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BookDao bookDao = new BookDao();
	GenreDao genreDao =new GenreDao();
	StatusDao statusDao =new StatusDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookAdd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	CategorieDao categoryDao =new CategorieDao();
    	ArrayList<Categorie> listCategories = new ArrayList<>();
    	listCategories = categoryDao.read();
    	
    	System.out.println(listCategories);
     
		session.setAttribute("categoriesList", listCategories);
    	request.getRequestDispatcher("/views/booksManage/bookAdd.jsp").forward(request, response);
    }

    

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//Recuperation du nom du user connect�
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        // Récupérer les informations du livre à partir des paramètres de requête
        String title = request.getParameter("title");
        String auteur = request.getParameter("auteur");
        int annee_publication = Integer.parseInt(request.getParameter("annee_publication"));
        String original_title = request.getParameter("original_title");
        String origin = request.getParameter("origin");
        int category_id = Integer.parseInt(request.getParameter("category_id"));
        int status_id = Integer.parseInt(request.getParameter("status_id"));
        String release_date = request.getParameter("release_date");
        String type = request.getParameter("type");
        int genre_id = Integer.parseInt(request.getParameter("genre_id"));
        String artist = request.getParameter("artist");
        String synopsis = request.getParameter("synopsis");
        String cover_image = request.getParameter("cover_image");
        String created_at = request.getParameter("created_at");

        // Convertir les données au format approprié
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date parsedReleaseDate = null;
        try {
            parsedReleaseDate = dateFormat.parse(release_date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
      //Recuperation de l'image upload depuis le formulaire via le name 
      		Part file=request.getPart("image");
      		
      		
        
        

        if (user != null) {
            // L'utilisateur est connecté, effectuer les actions appropriées
            // (par exemple, enregistrer les données du livre dans la base de données)

            // Récupérer l'objet Genre et Statut associés aux identifiants récupérés
            Subcategory subcategory = genreDao.findById(genre_id);
            Status status = statusDao.findById(status_id);

            if (subcategory != null && status != null) {
                // Créer un objet Book avec les informations récupérées
                Book book = new Book(title, auteur, annee_publication, category_id, original_title, origin, status, (Date) parsedReleaseDate, type, subcategory, artist, synopsis, cover_image, created_at);

                // Appeler la méthode create du bookDao pour créer un nouveau livre dans la base de données
                if (bookDao.create(book)) {
                    // Le livre a été créé avec succès
                    // Faire les actions nécessaires (par exemple, redirection, affichage de message de succès, etc.)
                    // ...
                } else {
                    // Échec de la création du livre dans la base de données
                    // Faire les actions nécessaires pour gérer l'erreur (par exemple, affichage de message d'erreur, journalisation, etc.)
                    // ...
                }
            } else {
                // Le genre ou le statut n'a pas été trouvé dans la base de données
                // Faire les actions nécessaires pour gérer cette situation (par exemple, affichage de message d'erreur, journalisation, etc.)
                // ...
            }
        } else {
            // L'utilisateur n'est pas connecté
            // Faire les actions nécessaires pour gérer cette situation (par exemple, redirection vers une page de connexion, affichage de message d'erreur, etc.)
            // ...
        }
        doGet(request, response);
    }


}


