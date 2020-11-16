package Controller;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import Model.member;
import Model.porder;

public class addporderAction extends ActionSupport {
	private Integer product1;
	private Integer product2;
	private Integer product3;
	public Integer getProduct1() {
		return product1;
	}
	public void setProduct1(Integer product1) {
		this.product1 = product1;
	}
	public Integer getProduct2() {
		return product2;
	}
	public void setProduct2(Integer product2) {
		this.product2 = product2;
	}
	public Integer getProduct3() {
		return product3;
	}
	public void setProduct3(Integer product3) {
		this.product3 = product3;
	}
	public String execute() throws Exception{
		Map session = ActionContext.getContext().getSession();
		member m = (member)session.get("M");
		porder p = new porder();
		p.add(m.getName(),getProduct1(), getProduct2(), getProduct3());
		session.put("P", p);
		return "confirm";
	}
}
