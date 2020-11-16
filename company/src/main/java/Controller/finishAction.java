package Controller;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import Dao.porderDao;
import Model.member;
import Model.porder;

public class finishAction extends ActionSupport{
	public String execute()throws Exception {
		Map session = ActionContext.getContext().getSession();
		member m = (member)session.get("M");
		porder p = (porder)session.get("P");
		
		new porderDao().add(p);
		return "finish";
	}
}
