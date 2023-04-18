package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Beans.Subcategory;

public class GenreDao implements IDAO<Subcategory> {
	Connection connect = MyConnecte.getConnect();
	PreparedStatement sql;
	ResultSet rs;


	@Override
	public boolean create(Subcategory subcategory) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public ArrayList<Subcategory> read() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean update(Subcategory subcategory) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Subcategory subcategory) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Subcategory findById(int id) {
	    try {
	        sql = connect.prepareStatement(
	            "SELECT * FROM genre WHERE id=?");

	        sql.setInt(1, id);
	        rs = sql.executeQuery();
	        System.out.println("Recherche findById OK");
	        if (rs.next()) {
	            int genreId = rs.getInt("id");
	            // Récupérer les autres informations nécessaires pour construire un objet Genre
	            // (si elles sont stockées dans la base de données)
	            String genreName = rs.getString("name"); // Exemple de récupération d'une autre colonne
	            // Instancier un nouvel objet Genre avec les informations récupérées
	            Subcategory subcategory = Subcategory.valueOf(genreName); // Supposant que la valeur stockée dans la base de données correspond au nom de l'énumération
	            return subcategory;
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