/**
 * 
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Beans.Book;

/**
 * @author aly_d
 *
 */
public class BookDao implements IDAO<Book>{
	Connection connect = MyConnecte.getConnect();
	PreparedStatement sql;
	ResultSet rs;

	@Override
	public boolean create(Book book) {
		try {
		    sql = connect.prepareStatement("INSERT INTO book (title,auteur,annee_publication,category_id,original_title,origin,status_id,release_date,type,genre_id,author,artist,synopsis,cover_image,created_at) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,NOW(?))");

		    sql.setString(1, book.getTitle());
		    sql.setString(2, book.getAuteur());
		    sql.setInt(3, book.getAnnee_publication());
		    sql.setInt(4, book.getCategory_id().getId());
		    sql.setString(5, book.getOriginal_title());
		    sql.setString(6, book.getOrigin());
		    sql.setInt(7, book.getStatus().getId());
		    sql.setDate(8, book.getRelease_date());
		    sql.setString(9, book.getType());
		    sql.setInt(10, book.getGenres().getId());
		    sql.setInt(11, book.getAuthor().getId());
		    sql.setString(12, book.getArtist());
		    sql.setString(13, book.getSynopsis());
		    sql.setString(14, book.getCover_image());
		    sql.setDate(15, book.getCreated_at());

		    sql.execute();
		    System.out.println("Insertion de book faite !!!");
		    return true;

		} catch (SQLException e) {
		    e.printStackTrace();
		    System.err.println("Pas d'insertion de book...");
		}
		return false;

	}

	@Override
	public ArrayList<Book> read() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean update(Book object) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Book object) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Object findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	// Méthode pour récupérer les données d'un livre à partir de la base de données ou d'autres sources
    public Book getBookById(int id) {
        // Implémentation de la récupération des données du livre à partir de la base de données ou d'autres sources
        // Remplacer par le code réel pour récupérer les données du livre
        Book book = new Book();
        // ... code pour récupérer les données du livre ...
        return book;
    }

}
