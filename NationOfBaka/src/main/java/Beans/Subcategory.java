package Beans;

public enum Subcategory {
    ACTION("Action"),
    AVENTURE("Aventure"),
    ROMANCE("Romance"),
    SCIENCE_FICTION("Science Fiction"),
    MYSTERE("Mystère"),
    HORREUR("Horreur"),
    DRAME("Drame"),
    HUMOUR("Humour"),
    HISTORIQUE("Historique"),
    FANTASY("Fantasy");
	
	private int id;
    private String name;
    private Categorie category_id;

    private Subcategory(String name) {
    	this.name = name;
    }
    /**
     * @param id
     * @param genre
     */
    private Subcategory(int id, String name) {
    	this.id = id;
    	this.name = name;
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
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
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
}
