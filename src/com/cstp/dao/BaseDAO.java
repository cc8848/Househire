/**
 * 
 */
package com.cstp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.cstp.factory.HibernateSessionFactory;
import com.cstp.dao.IBaseDao;


public class BaseDAO implements IBaseDao {

	Session s = null;
	
	public Session getSession(){		
		return HibernateSessionFactory.getSession();		
	}
	
	public boolean save(Object obj){		
		try{
			s = getSession();
			Transaction t = s.beginTransaction();
			s.save(obj);
			t.commit();
			s.close();
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public boolean delete(Object obj){
		try{
			s = getSession();
			Transaction t = s.beginTransaction();
			s.delete(obj);
			t.commit();
			s.close();
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public boolean update(Object obj){
		
		try{
			s = getSession();
			Transaction t = s.beginTransaction();
			s.update(obj);
			t.commit();
			s.close();
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public Object findById(Integer id, Class table){
		
		s= getSession();
		Object obj = (Object)s.get(table, id);
		return obj;
	}
	
	public List findAll(String table){
		s= getSession();
		String hql = "from "+table;
		Query q = s.createQuery(hql);
		List list = q.list();
		s.clear();
		s.close();
		return list;
	}	
	
	public List findBySQL(String sql,Class myclass){
		s= getSession();
		SQLQuery q = s.createSQLQuery(sql);
		q.setFirstResult(1);
		q.setFetchSize(10);
		q.addEntity(myclass);	
		return q.list();		
	}
}
