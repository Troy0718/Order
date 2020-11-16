package Controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class implFact {

	ApplicationContext model = new ClassPathXmlApplicationContext("sp1.xml");
	ApplicationContext dao =  new ClassPathXmlApplicationContext("spDao.xml");
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
