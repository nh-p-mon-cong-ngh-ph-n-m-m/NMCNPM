package Model;

public class Account {

	private String Username;
	private String Password;
	
	public Account() {
		super();
	}

	public Account(String username, String password) {
		super();
		
		Username = username;
		Password = password;

	}

	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

}