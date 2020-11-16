package Dao;

import java.lang.reflect.Member;

import org.hibernate.Session;
import org.hibernate.Transaction;

import Model.member;

public class memberDao implements implDao{

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//System.out.println(implDao.getDb());
		
		System.out.println(new memberDao().read(4));
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
		Session  se = implDao.getDb();
		
		member m = se.get(member.class, id);
		
		return m;
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
		member m = se.get(member.class, id);
		Transaction tx = se.beginTransaction();
		
		se.delete(m);
		tx.commit();
		se.close();
	}

}
