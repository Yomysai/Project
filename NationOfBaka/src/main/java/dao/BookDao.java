/**
 * 
 */
package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.catalina.webresources.Cache;

import Beans.Book;
import Beans.Categorie;

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
			 sql = connect.prepareStatement("INSERT INTO book (title,auteur,annee_publication,category_id,original_title,origin,status_id,release_date,type,genre_id,author_id,artist,synopsis,cover_image,created_at) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,NOW(?))");

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
	    ArrayList<Book> books = new ArrayList<>();
	    
	    try {
	        sql = connect.prepareStatement("SELECT * FROM book WHERE id = ?");
	        sql.setString(1, "id");
	        ResultSet rs = sql.executeQuery(); // Exécuter la requête SQL et obtenir le résultat dans un ResultSet
	        
	        while (rs.next()) {
	            int id = rs.getInt("id");
	            String title = rs.getString("title");
	            String auteur = rs.getString("auteur");
	            int annee_publication = rs.getInt("annee_publication");
	            int category_id = rs.getInt("category_id");
	            String original_title = rs.getString("original_title");
	            String origin = rs.getString("origin");
	            int status_id = rs.getInt("status_id");
	            String type = rs.getString("type");
	            String artist = rs.getString("artist");
	            String synopsis = rs.getString("synopsis");
	            String cover_image = rs.getString("cover_image");
	            Date created_at = rs.getDate("created_at");
	        
	            
	            // Créer un objet Book à partir des données récupérées
	            Book book = new Book(id, title, auteur, annee_publication, category_id, original_title, origin,
	                    status_id, type, artist, synopsis, cover_image, created_at);
	            
	            // Ajouter l'objet Book à la liste des livres
	            books.add(book);
	            System.out.println(book + " Insertion de book faite !!!");
	        }
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	        System.err.println("Pas de book...");
	    }

	    // Retourner la liste des livres
	    return books;
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
