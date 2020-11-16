package Controller;

import com.opensymphony.xwork2.ActionSupport;

import Dao.memberDao;
import Dao.querymember;
import Model.member;

public class addmemberAction extends ActionSupport {
	private String name ;
	private String username;
	private String password;
	private String phone;
	private String address;
	private Boolean admin;
	
	
	
	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
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



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public Boolean getAdmin() {
		return admin;
	}



	public void setAdmin(Boolean admin) {
		this.admin = admin;
	}



	public String execute() throws Exception{
		member m = querymember.queryUsername(getUsername());
		if(m==null) {
			m = new member();
			m.add(getName(), getUsername(), getPassword(), getPhone(), getAddress(), getAdmin());
			new memberDao().add(m);
			return "addSuccess";
		}else {
			return "userERROR";
		}
		
	}
	
}
