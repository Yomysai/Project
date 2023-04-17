package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.User;
import dao.UserDao;

/**
 * Servlet implementation class Dashboard
 */
@WebServlet("/dashboard")
public class Dashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       UserDao userDao = new UserDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Dashboard() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * user desactivation
		 */
			if (request.getParameter("userStatusOption")!=null) {
				int userId = Integer.parseInt(request.getParameter("userId"));
				User user =userDao.findById(userId);
			
					if (user.isActive()) {
						user.setActive(false);
						if (!userDao.changeUserStatus(user)) {
							request.setAttribute("error", "Oups! L'utilisateur n'a pas pu être désactivé");
						}
					} else if (!user.isActive()) {					
						user.setActive(true);
						if (!userDao.changeUserStatus(user)) {
							request.setAttribute("error", "Oups! L'utilisateur n'a pas pu être activé");
						}
						
					}
			}
			request.setAttribute("userList", userDao.read());
		request.getRequestDispatcher("/views/backOffice/dashboard.jsp").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
