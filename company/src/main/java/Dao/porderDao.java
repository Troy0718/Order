package Dao;

import org.hibernate.Session;
import org.hibernate.Transaction;


import Model.porder;

public class porderDao implements implDao {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		System.out.println(implDao.getDb());
		System.out.println(new porderDao().read(2));
	/*porder p = new porder();
		p.add(1, 2, 3);
		new porderDao().add(p);*/
	}

	@Override
	public void add(Object o) {
		// TODO Auto-generated method stub
		Session se = implDao.getDb();
		Transaction tx = se.beginTransaction();
		
		se.save(o);
		tx.commit();
		se.close();
	}	

	@Override
	public Object read(int id) {
		// TODO Auto-generated method stub
		Session se  = implDao.getDb();
		porder p =se.get(porder.class, id);
		
		return p;
	}

	@Override
	public void update(Object o) {
		// TODO Auto-generated method stub
		Session se = implDao.getDb();
		Transaction tx = se.beginTransaction();
		
		se.update(o);
		tx.commit();
		se.close();
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session se = implDao.getDb();
		porder p = se.get(porder.class, id);
		Transaction tx = se.beginTransaction();
		
		se.delete(p);
		tx.commit();
		se.close();
	}

}
