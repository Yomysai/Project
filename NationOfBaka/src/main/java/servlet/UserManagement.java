package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.crypto.bcrypt.BCrypt;

import Beans.Role;
import dao.RoleDao;
import dao.UserDao;

/**
 * Servlet implementation class UserManagement
 */
@WebServlet("/userManagement")
public class UserManagement extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserManagement() {
		super();
		// TODO Auto-generated constructor stub
	}

	UserDao userDao = new UserDao();
	RoleDao roleDao = new RoleDao();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action="add";
		Beans.User user=null;

		if (request.getParameter("id")!=null) {
			action="update";
			user = userDao.findById(Integer.parseInt(request.getParameter("id")));
			
		}
		
		
		ArrayList<Role> roles = roleDao.read();
		
		request.setAttribute("roles", roles);
		request.setAttribute("action", action);
		if (action.equals("add")) {
	
		} else if (action.equals("update")) {
			request.setAttribute("userCurrent", user);
		}

		request.getRequestDispatcher("/views/backOffice/userManagement.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId = request.getParameter("user_id");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String PasswordR = request.getParameter("PasswordR");
		String role_selected = request.getParameter("role");
		String pseudo = request.getParameter("nickname");
		
		/*************************
		 * gestion des erreurs et controle de saisie
		 ***************************/
		if (!password.equals(PasswordR)) {
			request.setAttribute("error1", "Les mots de passe ne correspondent pas");
			doGet(request, response);
		}
		if (role_selected.equals("Sélectionner un rôle")) {
			request.setAttribute("error", "Veuillez choisir un rôle !!");
			doGet(request, response);
		} else if (role_selected.equals("Sélectionner un rôle")) {
			request.setAttribute("error", "Veuillez choisir un rôle !!");
			doGet(request, response);
		}
		
		/***************************************************************************/

		/*************************** création du user ****************************/
		Beans.Role role = new Beans.Role();
		role.setId(Integer.parseInt(role_selected));
		Beans.User user = new Beans.User(pseudo, email, BCrypt.hashpw(password, BCrypt.gensalt()), role);

		if (userId.equals("")) {
			if (!userDao.create(user)) {
				request.setAttribute("error2",
						"L'utilisateur n'a pas été ajouté. Essayer de changer d'adresse E-mail.");
				doGet(request, response);
			}
		} else {
			user.setId(Integer.parseInt(userId));
			if (!userDao.update(user)) {
				request.setAttribute("error2",
						"L'utilisateur n'a pas été modifié.");
				doGet(request, response);
			}
		}
		
		//response.sendRedirect("dashboard");
		request.getRequestDispatcher("/views/backOffice/dashboard.jsp").forward(request, response);
	}

}
