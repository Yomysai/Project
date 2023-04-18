package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import Beans.Categorie;

public class CategorieDao implements IDAO<Categorie> {
	Connection connect = MyConnecte.getConnect();
	PreparedStatement sql; 
	ResultSet rs;
	Categorie category = new Categorie();
	public static ArrayList<Categorie> activeCategories = new ArrayList<>();
	
	@Override
	public boolean create(Categorie category) {
		try {
			sql = connect.prepareStatement("INSERT INTO categorie (nom, isActive) VALUES (?, ?)");
			sql.setString(1, category.getCategory());
			sql.setBoolean(2, true);
			sql.execute();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public ArrayList<Categorie> read() {
		ArrayList<Categorie> listeCategory =new ArrayList<>();
		try {
			sql = connect.prepareStatement("SELECT * FROM categorie");
			rs = sql.executeQuery();
			while(rs.next()) {
				category = new Categorie(rs.getInt("id"), rs.getString("nom"), rs.getBoolean("isActive"));
				listeCategory.add(category);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listeCategory;
	}
//	public ArrayList<Categorie> readCat() {
//	    ArrayList<Categorie> listeCategory = new ArrayList<>();
//	    try {
//	        sql = connect.prepareStatement("SELECT * FROM category");
//	        rs = sql.executeQuery();
//	        while (rs.next()) {
//	            int id = rs.getInt("id");
//	            String categoryName = rs.getString("category");
//	            boolean isActive = rs.getBoolean("isActive");
//	             Create a new Category object using the retrieved data
//	             category = new Categorie(id, categoryName, isActive);
//	             Add the Category object to the ArrayList
//	            listeCategory.add(category);
//	        }
//	    } catch (SQLException e) {
//	        e.printStackTrace();
//	    }
//	    return listeCategory;
//	}

	
	public void readActives() {
		activeCategories.clear();
		try {
			sql = connect.prepareStatement("SELECT * FROM categorie WHERE isActive = 1");
			rs = sql.executeQuery();
			while (rs.next()) {
				activeCategories.add(new Categorie(rs.getInt("id"), rs.getString("nom"), rs.getBoolean("isActive")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void injectCategories(HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		CategorieDao categoryDao = new CategorieDao();
		categoryDao.readActives();
		session.setAttribute("categoriesList", activeCategories);

	}

	@Override
	public boolean update(Categorie category) {
		try {
			sql = connect.prepareStatement("UPDATE categorie SET nom = ?, isActive = ? WHERE id = ?");
			sql.setString(1, category.getCategory());
			sql.setBoolean(2, category.isActive());
			sql.setInt(3, category.getId());
			sql.execute();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean delete(Categorie categorie) {
		try {			
			sql = connect.prepareStatement("DELETE FROM categorie WHERE id = ?");	
			sql.setInt(1, category.getId());
			sql.execute();
			return true;
		}catch(Exception e) {
			e.printStackTrace();		
		}
		return false;
	}
	
	public boolean changeCategoryStatus(Categorie category) {
		try {			
			sql = connect.prepareStatement("UPDATE categorie SET isActive = ? WHERE id = ?");	
			sql.setBoolean(1, category.isActive());
			sql.setInt(2, category.getId());
			sql.execute();
			return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public Categorie findById(int id) {
		try {
			sql = connect.prepareStatement("SELECT * FROM categorie WHERE id = ?");
			sql.setInt(1, id);
			rs= sql.executeQuery();
			if(rs.next()) {
				category = new Categorie(rs.getInt("id"),rs.getString("nom"),rs.getBoolean("isActive"));
				return category;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
