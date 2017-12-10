package cn.entity;

public class User {
	private String userid;
	private String username;
	private String password;
	private int age;
	private String email;
	private String address;
	private String qq;
	
	public User(String username, String password, int age, String email) {
		super();
		this.username = username;
		this.password = password;
		this.age = age;
		this.email = email;
	}
	public User() {
		
	}
	public User(String userid, String username, String password, int age,
			String email, String address, String qq) {
		super();
		this.userid = userid;
		this.username = username;
		this.password = password;
		this.age = age;
		this.email = email;
		this.address = address;
		this.qq = qq;
	}


	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username
				+ ", password=" + password + ", age=" + age + ", email="
				+ email + ", address=" + address + ", qq=" + qq + "]";
	}
	
}
