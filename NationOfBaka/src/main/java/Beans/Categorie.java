package Beans;

public class Categorie {
	private int id;
	private String nom;
	/**
	 * @param id
	 * @param nom
	 */
	public Categorie(int id, String nom) {
		this.id = id;
		this.nom = nom;
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
	 * @return the nom
	 */
	public String getNom() {
		return nom;
	}
	/**
	 * @param nom the nom to set
	 */
	public void setNom(String nom) {
		this.nom = nom;
	}
}
