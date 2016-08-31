/**
 * 
 */
package com.cstp.dao;

import java.util.List;

public interface IBaseDao {
	public boolean save(Object obj);
	public boolean delete(Object obj);
	public boolean update(Object obj);
	public Object findById(Integer id, Class table);
	public List findAll(String table);
	public List findBySQL(String sql,Class myclass);
	
}
