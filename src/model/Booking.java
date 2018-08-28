package model;

public class Booking {
	private int id;
	private String name;
	private String email;
	private String hp;
	private String bookdate;
	private String kindfield;
	private int bookhour;
	private int totalprice;
	private String status;
	
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public void setHp(String hp) {
		this.hp = hp;
	}
	
	public void setBookdate(String bookdate) {
		this.bookdate = bookdate;
	}
	
	public void setKindfield(String kindfield) {
		this.kindfield = kindfield;
	}
	
	public void setBookhour(int bookhour) {
		this.bookhour = bookhour;
	}
	
	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}
	
	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getHp() {
		return hp;
	}
	
	public String getBookdate() {
		return bookdate;
	}
	
	public String getKindfield() {
		return kindfield;
	}
	
	public int getBookhour() {
		return bookhour;
	}
	
	public int getTotalprice() {
		return totalprice;
	}
}
