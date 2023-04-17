package servlet;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCrypt;

import Beans.User;
import dao.UserDao;

/**
 * Servlet implementation class Account
 */
@WebServlet("/account")
public class Account extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserDao userDao = new UserDao();
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Account() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession(true);
    	Beans.User currentUser = (Beans.User) session.getAttribute("userC");

    	if (request.getAttribute("deactivationLogOut") != null) {
    		if ((boolean)request.getAttribute("deactivationLogOut")) {
    			response.sendRedirect("accountDeactivated");
    		}
    	} else {
    		request.getRequestDispatcher("/views/account.jsp").forward(request,response);
    	}
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();

    	if ("accountInfo".equals(request.getParameter("formSubmitted"))) {
    		if (userDao.update(new Beans.User(((Beans.User) session.getAttribute("currentUser")).getId(), request.getParameter("usernickname"), request.getParameter("userEmail"), ((Beans.User) session.getAttribute("currentUser")).getPassword(), ((Beans.User) session.getAttribute("currentUser")).getRoleId()))) {
    			session.setAttribute("currentUser", userDao.findById(((Beans.User) session.getAttribute("currentUser")).getId()));
    			request.setAttribute("message", "Vos informations personnelles ont bien été mises à jour !");
    		} else {
    			request.setAttribute("message", "Erreur : une erreur est survenue lors de la mise à jour de vos informations personnelles.");
    		}
    		request.setAttribute("backToPage", "#accountInfo");
    	}

    	if ("accountPassword".equals(request.getParameter("formSubmitted"))) {
    		if (request.getParameter("newPwd").equals(request.getParameter("confPwd"))) {
    			if (BCrypt.checkpw(request.getParameter("oldPwd"), ((Beans.User) session.getAttribute("currentUser")).getPassword())) {
    				String regex = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,20}$";
    	            Pattern p = Pattern.compile(regex);
    	            Matcher m = p.matcher(request.getParameter("newPwd"));
    	            if (m.matches()) {
    	            	String pwd_with_bcrypt = BCrypt.hashpw(request.getParameter("newPwd"), BCrypt.gensalt());
    	            	userDao.updatePassword(((Beans.User) session.getAttribute("currentUser")), pwd_with_bcrypt);
    	            	session.setAttribute("currentUser", userDao.findById(((Beans.User) session.getAttribute("currentUser")).getId()));
    	            	request.setAttribute("message", "Votre mot de passe a bien été mis à jour !");
    	            } else {
    	            	request.setAttribute("message", "Erreur : votre nouveau mot de passe ne respecte pas le format suivant : 8 à 20 caractères, et minimum 1 majuscule, 1 minuscule, 1 chiffre, 1 caractère spécial (#?!@$%^&*-).");
    	            }
    			} else {
    				request.setAttribute("message", "Erreur : l'ancien mot de passe saisi n'est pas le bon.");
    			}
    		} else {
    			request.setAttribute("message", "Erreur : les nouveaux mots de passe ne correspondent pas.");
    		}
    		request.setAttribute("backToPage", "#accountPassword");
    	}

    	if ("accountDeactivation".equals(request.getParameter("formSubmitted"))) {
    		if (userDao.deactivate(((User) session.getAttribute("currentUser")), request.getParameter("pwdForDeactivation"))) {
    			request.setAttribute("deactivationLogOut", true);
    		}
    	}
    }


}
