package Beans;

public enum Subcategory {
    ACTION("Action"),
    COMÉDIE("Comédie"),
    DRAME("Drame"),
    FANTASY("Fantasy"),
    HORREUR("Horreur"),
    MYSTERE("Mystère"),
    AVENTURE("Aventure"),
    ROMANCE("Romance"),
    SCIENCE_FICTION("Science_fiction"),
    TRANCHE_DE_VIE("Tranche de vie"),
    THRILLER("Thriller"),
    POLICIER("Policier"),
    //HISTORIQUE("Historique"),
    PSCHOLOGIQUE("'Pschologique"),
    AUTRE("Autre");
	//HUMOUR("Humour"),
	
	private int id;
    private String name;
    private Categorie category_id;

    /**
	 * 
	 */
	private Subcategory() {
	}
	/**
	 * @param id
	 * @param name
	 * @param category_id
	 */
	private Subcategory(int id, String  name, Categorie category_id) {
		this.id = id;
		this.name = name;
		this.category_id = category_id;
	}
	private Subcategory(String  name) {
    	this.name = name;
    }
    /**
     * @param id
     * @param genre
     */
    private Subcategory(int id, String  name) {
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
	public void setName(String  name) {
		this.name =  name;
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
