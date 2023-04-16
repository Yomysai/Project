package servlet;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.crypto.bcrypt.BCrypt;

import dao.UserDao;

/**
 * Servlet implementation class Register
 */
@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Register() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/views/register.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pseudo = request.getParameter("nickname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		

		System.out.println(pseudo);
		System.out.println(email);
		System.out.println(password);

		String regex = "";
		Pattern p;
		Matcher m;
		UserDao userDao = new UserDao();

		if (password == null || password.equalsIgnoreCase("")) {
			request.setAttribute("msn", "Le password est un champ obligatoire.");
			request.setAttribute("msnType", "KO");
			doGet(request, response);
		} else {
			regex = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,20}$";
			p = Pattern.compile(regex);
			m = p.matcher(password);
			if (!m.matches()) {
				request.setAttribute("msn",
						"Le password doit être composé de chiffres, de lettres, de majuscules et de caractères spéciaux.");
				request.setAttribute("msnType", "KO");
				doGet(request, response);
			}

		}

		if (email == null || email.equalsIgnoreCase("")) {
			request.setAttribute("msn", "Le email est un champ obligatoire.");
			request.setAttribute("msnType", "KO");
			doGet(request, response);
		} else {
			regex = "^[A-Za-z0-9][A-Za-z0-9.-_]+[A-Za-z0-9][@][A-Za-z0-9][A-Za-z0-9.-_]+[A-Za-z0-9]?[\\.][A-Za-z0-9]{2,3}$";
			p = Pattern.compile(regex);
			m = p.matcher(email);
			if (!m.matches()) {
				request.setAttribute("msn",
						"Vous devez saisir une adresse e-mail valide par exemple example@example.fr.");
				request.setAttribute("msnType", "KO");
				doGet(request, response);
			} else if (userDao.findByEmailB(email)) {
				request.setAttribute("msn", "Vous avez déjà un compte avec cette adresse e-mail.");
				request.setAttribute("msnType", "KO");
				doGet(request, response);
			}

		}

		String pwd_with_bcrypt = BCrypt.hashpw(password, BCrypt.gensalt());

		Beans.Role role = new Beans.Role(1, "Client");
		Beans.User user = new Beans.User(pseudo, email, pwd_with_bcrypt, role);
		
			if (!userDao.create(user)) {
				request.setAttribute("msn", "Le compte utilisateur a été créé avec succès.");
				request.setAttribute("msnType", "OK");
			} else {
				request.setAttribute("msn", "Le compte d'utilisateur n'a pas pu être créé.");
				request.setAttribute("msnType", "KO");
				// request.getRequestDispatcher("views/register.jsp").forward(request,
				// response);
			}
		doGet(request, response);
	}

}
