package Beans;

public class Categorie {
	private int id;
	private String nom;
	private boolean isActive;
	
	public Categorie() {
	}
	
	/**
	 * @param id
	 */
	public Categorie(int id) {
		this.id = id;
	}

	public Categorie(String category, boolean isActive) {
		this.nom = category;
		this.isActive = isActive;
	}

	public Categorie(int id, String category, boolean isActive) {
		this.id = id;
		this.nom = category;
		this.isActive = isActive;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategory() {
		return nom;
	}

	public void setCategory(String category) {
		this.nom = category;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
}
