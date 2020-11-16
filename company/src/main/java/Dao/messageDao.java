package Dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import Model.message;

public class messageDao implements implDao {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//System.out.println(implDao.getDb());
		
		message ms = new message();
		ms.add("飛天御劍派", "九頭龍閃");
		
		new messageDao().add(ms);
		System.out.println(ms.getName()+":"+ms.getContent());
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
		
		message m = se.get(message.class, id);
		
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
		message m = se.get(message.class, id);
		Transaction tx = se.beginTransaction();
		
		se.delete(m);
		tx.commit();
		se.close();
	}
}
