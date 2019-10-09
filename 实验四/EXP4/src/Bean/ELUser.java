package Bean;

public class ELUser {
	private String username;
	private String userpassword;
	private String confirmpassword;
	private String sex;
	private String[] hobby;

	public ELUser(String username, String userpassword, String confirmpassword, String sex, String[] hobby) {
		super();
		this.username = username;
		this.userpassword = userpassword;
		this.confirmpassword = confirmpassword;
		this.sex = sex;
		this.hobby = hobby;
	}

	public ELUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	

	public String[] getHobby() {
		return hobby;
	}

	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}

	public String getConfirmpassword() {
		return confirmpassword;
	}

	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}
	
	
}
