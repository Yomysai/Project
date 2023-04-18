package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Beans.Status;

public class StatusDao implements IDAO<Status> {
	Connection connect = MyConnecte.getConnect();
	PreparedStatement sql;
	ResultSet rs;


	@Override
	public boolean create(Status object) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public ArrayList<Status> read() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean update(Status status) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Status status) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Status findById(int id) {
	    try {
	        sql = connect.prepareStatement(
	            "SELECT * FROM user WHERE id=?");

	        sql.setInt(1, id);
	        rs = sql.executeQuery();
	        System.out.println("Recherche findById OK");
	        if (rs.next()) {
	            int statusId = rs.getInt("id");
	            String nickname = rs.getString("nickname");
	            // Instancier un nouvel objet Status avec les informations récupérées
	            Status status = new Status(statusId, nickname);
	            return status;
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	        System.out.println("Recherche findById KO");
	    } finally {
	        // Fermer les objets PreparedStatement et ResultSet
	        if (rs != null) {
	            try {
	                rs.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	        if (sql != null) {
	            try {
	                sql.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }
	    return null;
	}


}
