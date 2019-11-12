package javaBean;

public class userBean {
	private String username;
    private String password;
	public userBean(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	public userBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getUsername() {
		return username;
	}
	public String getPassword() {
		return password;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
