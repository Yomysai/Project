package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Beans.User;

/**
 * Servlet implementation class Accueil
 */
@WebServlet(urlPatterns = {"/","/index"})
public class Accueil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Accueil() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		User currentUser = (User) session.getAttribute("user");
		
		if (currentUser != null) {
			if (currentUser.getRoleId().getRole().equalsIgnoreCase("Admin")) {
				response.sendRedirect("dashboard");
				System.out.println("en mode Admin");
			} else {
				pageLoad(request, response);
			}
		} else {	
			pageLoad(request, response);
		}
//		request.getRequestDispatcher("/views/backOffice/dashboard.jsp").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	protected void pageLoad(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.getRequestDispatcher("/views/index.jsp").forward(request,response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
