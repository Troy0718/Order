package Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import Model.porder;

public class queryporder {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println(queryporder.querySum(0, 60));
		System.out.println(queryporder.queryName("郭靖"));
		System.out.println(queryporder.queryAll());
		
		//List l = queryporder.queryAll();
		//List l = queryporder.querySum(0, 60);
		List l = queryporder.queryName("郭靖");
		for(Object o : l) {
			porder p = (porder)o;
			System.out.println(
				p.getId()+","+
				p.getName()+","+
				p.getProduct1()+","+
				p.getProduct2()+","+
				p.getProduct3()+","+
				p.getSum()+","+
				p.getDiscount()
					
					);
		}
		
	}
	public static List querySum(int start , int end ) {
		Session se = implDao.getDb();
		String hql ="from porder p where p.sum >= ?1 and p.sum <= ?2";
		Query q = se.createQuery(hql);
		q.setParameter(1, start);
		q.setParameter(2, end);
		List l = q.list();
		return l;
	}
	
	public static List queryName(String Name) {
		Session se = implDao.getDb();
		String hql = "from porder p where p.name = ?1";
		Query q = se.createQuery(hql);
		q.setParameter(1, Name);
		List l = q.list();
		return l;
	}
	
	public static List queryAll() {
		Session se = implDao.getDb();
		String hql = "from porder  ";
		Query q = se.createQuery(hql);
		List l = q.list();
		return l;
	}
	
}
