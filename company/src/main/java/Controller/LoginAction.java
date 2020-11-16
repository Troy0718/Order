package Controller;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import Dao.querymember;
import Model.member;

public class LoginAction extends ActionSupport{
	private String username ;
	private String password;
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
	
	public String execute() throws Exception {
		
		member m = querymember.queryUser(getUsername(), getPassword());
		if( m !=null) {
			Map session = ActionContext.getContext().getSession();
			session.put("M", m);
			return "LoginSuccess";
		}else {
			return "LoginERROR";
		}
		
	}
	
}
