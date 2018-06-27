package test.beans;

public class User {

	private String username;
	private String password;
	private String role;
	private int id;
	


	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", role=" + role + ", id=" + id + "]";
	}


	public User() {
		super();
	}


	public void sendMessage() {
		
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getRole() {
		return role;
	}


	public void setRole(String role) {
		this.role = role;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}






}
