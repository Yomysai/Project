package servlet;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Beans.Book;
import Beans.User;
import dao.BookDao;

/**
 * Servlet implementation class BookAdd
 */
@WebServlet("/bookAdd")
public class BookAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BookDao bookDao = new BookDao();
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
    	request.getRequestDispatcher("/views/booksManage/bookAdd.jsp").forward(request, response);
    }

    

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user"); 
        
     // Récupérer les informations du livre à partir des paramètres de requête
        String title = request.getParameter("title");
        String auteur = request.getParameter("auteur");
        int annee_publication = Integer.parseInt(request.getParameter("annee_publication"));
        String original_title = request.getParameter("original_title");
        String origin = request.getParameter("origin");
        int category_id =Integer.parseInt( request.getParameter("category_id"));
        //String statusId = request.getParameter("status_id");
       // Status status = Status.valueOf(request.getParameter("status_id")); 
        int status =Integer.parseInt(request.getParameter("status_id")); // sysout a faire 
        String release_date = request.getParameter("release_date");
        String type = request.getParameter("type");
        int genre_id = Integer.parseInt(request.getParameter("genre_id"));
       // int author_id = Integer.parseInt(request.getParameter("author_id"));
        String artist = request.getParameter("artist");
        String synopsis = request.getParameter("synopsis");
        String cover_image = request.getParameter("cover_image");
        String created_at = request.getParameter("created_at");

     // Convertir les données au format approprié
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date parsedReleaseDate = null;
        try {
            parsedReleaseDate = (Date) dateFormat.parse(release_date);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        
        if (user != null) {
        	 Book book=  new Book(title,auteur,annee_publication,category_id,original_title,origin,status,release_date,type,genre_id,artist,synopsis,cover_image,created_at);
        	if (bookDao.create(book)) {
				
			}
                // L'utilisateur est connecté, effectuer les actions appropriées
        	
            // (par exemple, enregistrer les données du livre dans la base de données)
            // ...
        } 

       
    }

}


