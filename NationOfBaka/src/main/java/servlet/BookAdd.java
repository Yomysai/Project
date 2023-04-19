package servlet;

import java.io.File;
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
	GenreDao subcategoryDao =new GenreDao();
	StatusDao statusDao =new StatusDao();
	CategorieDao categoryDao =new CategorieDao();

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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        ArrayList<Categorie> listCategories = new ArrayList<>();
        ArrayList<Book> listBooks = new ArrayList<>();
        ArrayList<Beans.Subcategory> subcategories = new ArrayList<>();
        
        listCategories = categoryDao.read();
        //subcategories =  subcategoryDao.read();
        listBooks =  bookDao.read();

        // Convertir les constantes d'énumération en noms de chaînes de caractères
        ArrayList<String> subcategoryNames = new ArrayList<>();
        for (Beans.Subcategory subcategory : subcategories) {
            subcategoryNames.add(subcategory.toString());
        }

        session.setAttribute("categoriesList", listCategories);
        session.setAttribute("listBooks", listBooks);
      //  session.setAttribute("subcategoriesList", subcategoryNames); // Utiliser les noms de chaînes de caractères des sous-catégories

        request.getRequestDispatcher("/views/booksManage/bookAdd.jsp").forward(request, response);
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	    // Récupération de l'objet User connecté depuis la session
    	    HttpSession session = request.getSession();
    	    User user = (User) session.getAttribute("user");

    	    // Récupération des informations du livre à partir des paramètres de requête
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
    	    String created_at = request.getParameter("created_at");
    	    // Conversion des données au format approprié
    	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    	    java.util.Date parsedReleaseDate = null;
    	    try {
    	        parsedReleaseDate = dateFormat.parse(release_date);
    	    } catch (ParseException e) {
    	        e.printStackTrace();
    	    }

    	    // Récupération de l'image uploadée depuis le formulaire via le name
    	    Part file = request.getPart("cover_image");
    	    // Récupération du nom de l'image
    	    String filename = file.getSubmittedFileName();
    	    System.out.println("Récupération du nom de l'image : " + filename);
    	    /* Ici, je récupère juste le nom de l'image (sans l'extension : .png, .jpeg, ...)
    	     * en utilisant filename.substring(0,filename.indexOf('.'))
    	     * puis je concatène avec le titre pour garantir l'unicité de l'image
    	     */
    	    String finalFileName = filename.substring(0, filename.indexOf('.')) + "_" + title + filename.substring(filename.indexOf('.'));
    	    // Retirer les espaces dans le titre
    	    finalFileName = finalFileName.trim().replaceAll(" ", "_");
    	    System.out.println("Retirer les espaces dans le titre : " + finalFileName);
    	    // Ici, je stocke sur mon serveur dans un dossier temporaire géré par eclipse
    	    String chemin = getServletContext().getRealPath("") + File.separator + "assets" + File.separator + "uploads";

    	    File folder = new File(chemin);

    	    if (!folder.exists()) {
    	        folder.mkdirs();
    	    }

    	    // Copie du fichier de l'image uploadée vers le dossier de destination sur le serveur
    	    file.write(chemin + File.separator + finalFileName);
    	    String cover_image = "assets/uploads/" + finalFileName; // Chemin relatif de l'image pour la base de données

    	    if (user != null) {
    	        // L'utilisateur est connecté, effectuer les actions appropriées
    	        // (par exemple, enregistrer les données du livre dans la base de données)

    	        // Récupérer l'objet Genre et Statut associés aux identifiants récupérés
    	        Subcategory subcategory = subcategoryDao.findById(genre_id);
    	        Status status = statusDao.findById(status_id);

    	        if (subcategory != null && status != null) {
    	            // Créer un objet Book avec les informations récupéré
    	        	Book book = new Book(title, auteur, annee_publication, category_id, original_title, origin, status, (Date) parsedReleaseDate, type, subcategory, artist, synopsis, created_at);
    	        	book.setCover_image(cover_image); // Ajouter un setter pour le chemin d'image dans la classe Book
    	        	bookDao.create(book);

    	            // Appeler la méthode pour ajouter le livre à la base de données
    	            bookDao.create(book);

    	            // Rediriger vers une page de succès
    	            response.sendRedirect("success.jsp");
    	        } else {
    	            // Rediriger vers une page d'erreur
    	            response.sendRedirect("error.jsp");
    	        }
    	    } else {
    	        // Rediriger vers une page de connexion
    	        response.sendRedirect("login.jsp");
    	    }
    	}


}


