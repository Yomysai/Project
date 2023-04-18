package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;

import org.springframework.security.crypto.bcrypt.BCrypt;

import Beans.Role;
import Beans.User;

public class UserDao implements IDAO<User> {
	Connection connect = MyConnecte.getConnect();
	PreparedStatement sql;
	ResultSet rs;

	@Override
	public boolean create(User user) {
		try {
			// Insertion dans la table User
			sql = connect.prepareStatement("INSERT INTO User (nickname, email, password, role_id) VALUES (?,?,?,?)",new String[] { "id" });

			sql.setString(1, user.getNickname());
			sql.setString(2, user.getEmail());
			sql.setString(3, user.getPassword());
			sql.setInt(4, user.getRoleId().getId());
//	        sql.setBoolean(5, user.isActive());

			sql.executeUpdate();

			System.out.println("Insertion OK");

			// Récupération de l'id de l'utilisateur créé
			int userId = 0;
			ResultSet generatedKeys = sql.getGeneratedKeys();
			if (generatedKeys.next()) {
				userId = generatedKeys.getInt(1);
			}

			// Insertion dans la table last_login_event
			sql = connect.prepareStatement(
					"INSERT INTO last_login_event (user_id, login_time, registrationDate) VALUES (?,?,?)");

			sql.setInt(1, userId);
			sql.setTimestamp(2, Timestamp.valueOf(LocalDateTime.now()));
			sql.setDate(3, Date.valueOf(LocalDateTime.now().toLocalDate()));

			sql.executeUpdate();

			System.out.println("Insertion dans last_login_event OK");
			return true;
		} catch (Exception e) {
			System.out.println("Insertion KO");
			e.printStackTrace();
		}
		return false;
	}

	public boolean createUser(User user) {

		try {
			sql = connect.prepareStatement("INSERT INTO User (nickname, email, password, role_id) VALUES (?,?,?,?)");

			sql.setString(1, user.getNickname());
			sql.setString(2, user.getEmail());
			sql.setString(3, user.getPassword());
			sql.setInt(4, user.getRoleId().getId());

			sql.execute();

			System.out.println("Insertion OK");
			return true;
		} catch (Exception e) {
			System.out.println("Insertion KO");
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public ArrayList<User> read() {
		ArrayList<User> users = new ArrayList<>();
		User user = null;

		try {
			sql = connect
					.prepareStatement("select *, user.id as userId from user inner join role on user.role_id=role.id");
			System.out.println("Insertion read use OK");
			rs = sql.executeQuery();

			while (rs.next()) {
				user = new User(rs.getInt("id"), rs.getString("nickname"),rs.getString("email"), rs.getString("password"),
						new Role(rs.getInt("role_id"), rs.getString("role")));
				users.add(user);
			}

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Insertion read KO");
		}

		return users;
	}
	public User login(String email, String password) {
		try {
			/*
			 * VERSION AVEC BCRYPT
			 */
			// Préparer la requête SQL avec les paramètres nécessaires, en incluant la
			// vérification de la colonne "isActive"
			sql = connect.prepareStatement(
					"SELECT *, user.id  FROM user inner JOIN role ON user.role_id = role.id WHERE user.email=? AND user.isActive=1");
			sql.setString(1, email);

			rs = sql.executeQuery();
			System.out.println("Insertion login OK");
			if (rs.next()) {
				// Vérifier si le mot de passe fourni correspond au mot de passe enregistré dans
				// la base de données en utilisant BCrypt
				if (BCrypt.checkpw(password, rs.getString("password"))) {
					// Créer et retourner un objet User avec les informations récupérées de la base
					// de données
					return new User(rs.getInt("id"), rs.getString("nickname"), rs.getString("email"),
							rs.getString("password"), new Role(rs.getString("role")));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Insertion login KO");
		}
		return null;
	}

	public boolean userActDes(String email) {
		try {
			sql = connect.prepareStatement("select email from user where user.email=? and user.isActive=?");
			sql.setString(1, email);
//			sql.setBoolean(2, true); // or false, depending on your 
			System.out.println("Insertion  ActDes OK");

			rs = sql.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Insertion  ActDes KO");
		}
		return false;
	}

	@Override
	public boolean update(User user) {
		try {
			sql = connect.prepareStatement(
					"UPDATE user SET nickname=?, email=?, password=?,role_id=?,isActive=1 WHERE id=?");

			sql.setString(1, user.getNickname());
			sql.setString(2, user.getEmail());
			sql.setString(3, user.getPassword());
			sql.setInt(4, user.getRoleId().getId());
			sql.setBoolean(5, user.isActive());
			sql.setInt(6, user.getId());

			sql.executeUpdate();

			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;

	}
	public boolean updatePassword(User user, String newPwd) {
		try {
			sql = connect.prepareStatement("UPDATE user SET password=? WHERE id=?");

			sql.setString(1, newPwd);
			sql.setInt(2, user.getId());

			sql.executeUpdate();

			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean delete(User user) {
		// TODO Auto-generated method stub
		return false;
	}
	public boolean deactivate(User user, String password) {
		try {
			/*
			 * VERSION AVEC BCRYPT
			 */
			sql = connect.prepareStatement("select *, user.id as userId from user inner join role on user.role_id=role.id where email=?"); // test@test.fr
			sql.setString(1, user.getEmail());

			rs = sql.executeQuery();

			if (rs.next()) {
				if (BCrypt.checkpw(password, rs.getString("password"))) {

					sql = connect.prepareStatement("UPDATE user SET isActive=FALSE WHERE id=? AND email=?");
					sql.setInt(1, user.getId());
					sql.setString(2, user.getEmail());
					sql.execute();
					return true;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public User findById(int id) {
		try {
			sql = connect.prepareStatement(
					"select *, user.id as userId from user inner join role on user.role_id=role.id WHERE user.id=?");

			sql.setInt(1, id);
			rs = sql.executeQuery();
			System.out.println("Insertion findById OK");
			if (rs.next()) {
				return new User(rs.getInt("id"), rs.getString("nickname"), rs.getString("email"),
						rs.getString("password"), new Role(rs.getInt("role_id"), rs.getString("role")));
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Insertion idFind KO");
		}
		return null;
	}

	public boolean findByEmailB(String email) {
		try {

			sql = connect.prepareStatement("select * from user WHERE user.email=?");
			sql.setString(1, email);
			rs = sql.executeQuery();
			System.out.println("Insertion findByEmailB OK");
		
			if (rs.next()) {
				return true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	
	public boolean changeUserStatus(User user) {
		try {
			sql = connect.prepareStatement("UPDATE user SET user.isActive=? WHERE user.id=?");
			sql.setBoolean(1, user.isActive());
			sql.setInt(2, user.getId());
			sql.execute();
			System.out.println("Insertion change OK");
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Insertion change KO");
			
		}

		return false;
	}


}
