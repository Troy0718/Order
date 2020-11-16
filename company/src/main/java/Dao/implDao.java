package Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public interface implDao {

	static Session getDb() {
		Configuration conn = new Configuration().configure();
		SessionFactory sfm = conn.buildSessionFactory();
		Session se = sfm.openSession();
		return se;
	}
	
	
	void add (Object  o);
	
	Object read(int id);
	
	void update(Object o);
	
	void delete (int id);
	
	
}
