package cn.oppotm.entity;

public class User {
	private int user_id;//用户id
	private String user_name;//用户名
	private String password;//密码
	
	public User() {
		super();
	}
	
	public User(int user_id, String user_name, String password) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.password = password;
	}

	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	

}
