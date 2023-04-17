package Beans;

import java.sql.Date;

public class Book {
	private int id;
	private String title;
	private String auteur;
	private int annee_publication;
	private Categorie category_id;
	private String original_title;
	private String origin;
	private Status status;
	private Date release_date;
	private String type;
	private Genre genres;
	private User author;
	private String artist;
	private String synopsis;
	private String cover_image;
	private Date created_at;
	/**
	 * 
	 */
	public Book() {
	}
	/**
	 * @param id
	 * @param title
	 * @param auteur
	 * @param annee_publication
	 * @param category_id
	 * @param original_title
	 * @param origin
	 * @param status
	 * @param release_date
	 * @param type
	 * @param genres
	 * @param author
	 * @param artist
	 * @param synopsis
	 * @param cover_image
	 * @param created_at
	 */
	public Book(int id, String title, String auteur, int annee_publication, Categorie category_id,
			String original_title, String origin, Status status, Date release_date, String type, Genre genres,
			User author, String artist, String synopsis, String cover_image, Date created_at) {
		this.id = id;
		this.title = title;
		this.auteur = auteur;
		this.annee_publication = annee_publication;
		this.category_id = category_id;
		this.original_title = original_title;
		this.origin = origin;
		this.status = status;
		this.release_date = release_date;
		this.type = type;
		this.genres = genres;
		this.author = author;
		this.artist = artist;
		this.synopsis = synopsis;
		this.cover_image = cover_image;
		this.created_at = created_at;
	}
	/**
	 * @param title
	 * @param auteur
	 * @param annee_publication
	 * @param category_id
	 * @param original_title
	 * @param origin
	 * @param status
	 * @param release_date
	 * @param type
	 * @param genres
	 * @param author
	 * @param artist
	 * @param synopsis
	 * @param cover_image
	 * @param created_at
	 */
	public Book(String title, String auteur, int annee_publication, Categorie category_id, String original_title,
			String origin, Status status, Date release_date, String type, Genre genres, User author, String artist,
			String synopsis, String cover_image, Date created_at) {
		this.title = title;
		this.auteur = auteur;
		this.annee_publication = annee_publication;
		this.category_id = category_id;
		this.original_title = original_title;
		this.origin = origin;
		this.status = status;
		this.release_date = release_date;
		this.type = type;
		this.genres = genres;
		this.author = author;
		this.artist = artist;
		this.synopsis = synopsis;
		this.cover_image = cover_image;
		this.created_at = created_at;
	}
	/**
	 * @param title
	 * @param auteur
	 * @param annee_publication
	 * @param category_id
	 * @param original_title
	 * @param origin
	 * @param status
	 * @param release_date
	 * @param type
	 * @param genres
	 * @param artist
	 * @param synopsis
	 * @param cover_image
	 */
	public Book(String title, String auteur, int annee_publication, Categorie category_id, String original_title,
			String origin, Status status, Date release_date, String type, Genre genres, String artist, String synopsis,
			String cover_image) {
		this.title = title;
		this.auteur = auteur;
		this.annee_publication = annee_publication;
		this.category_id = category_id;
		this.original_title = original_title;
		this.origin = origin;
		this.status = status;
		this.release_date = release_date;
		this.type = type;
		this.genres = genres;
		this.artist = artist;
		this.synopsis = synopsis;
		this.cover_image = cover_image;
	}
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * @return the auteur
	 */
	public String getAuteur() {
		return auteur;
	}
	/**
	 * @param auteur the auteur to set
	 */
	public void setAuteur(String auteur) {
		this.auteur = auteur;
	}
	/**
	 * @return the annee_publication
	 */
	public int getAnnee_publication() {
		return annee_publication;
	}
	/**
	 * @param annee_publication the annee_publication to set
	 */
	public void setAnnee_publication(int annee_publication) {
		this.annee_publication = annee_publication;
	}
	/**
	 * @return the category_id
	 */
	public Categorie getCategory_id() {
		return category_id;
	}
	/**
	 * @param category_id the category_id to set
	 */
	public void setCategory_id(Categorie category_id) {
		this.category_id = category_id;
	}
	/**
	 * @return the original_title
	 */
	public String getOriginal_title() {
		return original_title;
	}
	/**
	 * @param original_title the original_title to set
	 */
	public void setOriginal_title(String original_title) {
		this.original_title = original_title;
	}
	/**
	 * @return the origin
	 */
	public String getOrigin() {
		return origin;
	}
	/**
	 * @param origin the origin to set
	 */
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	/**
	 * @return the status
	 */
	public Status getStatus() {
		return status;
	}
	/**
	 * @param status the status to set
	 */
	public void setStatus(Status status) {
		this.status = status;
	}
	/**
	 * @return the release_date
	 */
	public Date getRelease_date() {
		return release_date;
	}
	/**
	 * @param release_date the release_date to set
	 */
	public void setRelease_date(Date release_date) {
		this.release_date = release_date;
	}
	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}
	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}
	/**
	 * @return the genres
	 */
	public Genre getGenres() {
		return genres;
	}
	/**
	 * @param genres the genres to set
	 */
	public void setGenres(Genre genres) {
		this.genres = genres;
	}
	/**
	 * @return the author
	 */
	public User getAuthor() {
		return author;
	}
	
	/**
	 * @param author the author to set
	 */
	public void setAuthor(User author) {
		this.author = author;
	}
	/**
	 * @return the artist
	 */
	public String getArtist() {
		return artist;
	}
	/**
	 * @param artist the artist to set
	 */
	public void setArtist(String artist) {
		this.artist = artist;
	}
	/**
	 * @return the synopsis
	 */
	public String getSynopsis() {
		return synopsis;
	}
	/**
	 * @param synopsis the synopsis to set
	 */
	public void setSynopsis(String synopsis) {
		this.synopsis = synopsis;
	}
	/**
	 * @return the cover_image
	 */
	public String getCover_image() {
		return cover_image;
	}
	/**
	 * @param cover_image the cover_image to set
	 */
	public void setCover_image(String cover_image) {
		this.cover_image = cover_image;
	}
	/**
	 * @return the created_at
	 */
	public Date getCreated_at() {
		return created_at;
	}
	/**
	 * @param created_at the created_at to set
	 */
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
}
