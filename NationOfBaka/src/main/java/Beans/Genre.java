package Beans;

public enum Genre {
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
    private String genre;

    private Genre(String genre) {
    	this.genre = genre;
    }
    /**
     * @param id
     * @param genre
     */
    private Genre(int id, String genre) {
    	this.id = id;
    	this.genre = genre;
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
	 * @param genre the genre to set
	 */
	public void setGenre(String genre) {
		this.genre = genre;
	}


    public String getGenre() {
        return genre;
    }
}
