package model;

public class Admin {
	private int admin_id;
	private String username;
	private String password;
	
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public int getAdmin_id() {
		return admin_id;
	}
	
	public String getUsername() {
		return username;
	}
	
	public String getPassword() {
		return password;
	}
}
