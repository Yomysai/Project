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
	        sql = connect.prepareStatement(
	            "INSERT INTO User (nickname, email, password, role_id) VALUES (?,?,?,?)", new String[]{"id"});

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
			sql = connect.prepareStatement(
					"INSERT INTO User (nickname, email, password, role_id) VALUES (?,?,?,?)");

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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean update(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Object findById(int id) {
		try {
			sql = connect.prepareStatement(
					"select *, user.id as userId from user inner join role on user.id_role=role.id WHERE user.id=?");

			sql.setInt(1, id);
			rs = sql.executeQuery();

			if (rs.next()) {
				return new User(rs.getInt("Id"), rs.getString("nickame"),rs.getString("email"), rs.getString("password"),new Role(rs.getInt("id_role"), rs.getString("role")));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public boolean findByEmailB(String email) {
		try {

			sql = connect
					.prepareStatement("select * from user WHERE user.email=?");
			sql.setString(1, email);
			rs = sql.executeQuery();

			if (rs.next()) {
				return true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public User login(String email, String password) {
		try {
			/*
			 * VERSION AVEC BCRYPT
			 */
			sql = connect.prepareStatement("SELECT * FROM user  JOIN role ON user.role_id = role.id WHERE user.email = ? AND user.isActive = 1;"); // test@test.fr
			sql.setString(1, email);

			rs = sql.executeQuery();
			System.out.println("Insertion  login OK");
			if (rs.next()) {
				if (BCrypt.checkpw(password, rs.getString("password"))) {

					return new User(rs.getInt("id"),rs.getString("nickname"),rs.getString("email"), rs.getString("password"), new Role( rs.getString("role")));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			 System.out.println("Insertion  login KO");
		}
		return null;
	}
	
	public boolean userActDes(String email) {
	    try {
	        // VERSION AVEC BCRYPT
	        sql = connect.prepareStatement("select * from user JOIN role on user.role_id=role.id where role=? and user.isActive = 1 ");
	        sql.setString(1, email);

	        rs = sql.executeQuery();
	        System.out.println("Insertion  ActDes OK");
	        if (rs.next()) {
	            return true;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        System.out.println("Insertion  ActDes KO");
	    }
	    return false;
	}


}
