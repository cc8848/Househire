package com.cstp.dao;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.cstp.bean.Salary;
import com.cstp.table.Hireinfo;
import com.cstp.table.Users;

public class UserDao extends BaseDAO{

	Session s = null;
	
	public Users getUserByName(String name){
		String hql = "from Users where name='"+name+"'";
		s = getSession();
		Query q = s.createQuery(hql);
		List list = q.list();
//		s.close();
//		Users user = (Users)q.list().get(0);
		Iterator it = list.iterator();
		if(it.hasNext()){
			Users user = (Users)it.next();
			return user;
		}
		return null;
	}
	
	public List searchHireinfo(Hireinfo hireinfo, Salary sal){
		String hql = "from Hireinfo ";
		if(hireinfo.getCounty() != 0){
			hql = hql + "where county= " + hireinfo.getCounty();
			if(hireinfo.getStreet() != 0){
				hql = hql + " and street= " + hireinfo.getStreet();
				if(sal.getMinsalary() != 0.0){
					hql = hql + " and salary >= " + sal.getMinsalary();
					if(sal.getMaxsalary() != 0.0){
						hql = hql + " and salary <= " +  sal.getMaxsalary();
						if(hireinfo.getRoomCount() != 0){
							hql = hql + " and roomCount = " + hireinfo.getRoomCount();
							if(hireinfo.getHallCount() != 0){
								hql = hql + " and hallCount = " +  hireinfo.getHallCount();
								if(hireinfo.getType() != 0){
									hql = hql + " and type = " + hireinfo.getType();
									if(hireinfo.getCreateTime() != ""){
										hql = hql + " and createTime >= " + hireinfo.getCreateTime() + " order by id desc";
									}
								}
							}
						}
					}
				}
			}
		}else if(hireinfo.getStreet() != 0){
			hql = hql + " where street= " + hireinfo.getStreet();
			if(sal.getMinsalary() != 0.0){
				hql = hql + " and salary >= " + sal.getMinsalary();
				if(sal.getMaxsalary() != 0.0){
					hql = hql + " and salary <= " +  sal.getMaxsalary();
					if(hireinfo.getRoomCount() != 0){
						hql = hql + " and roomCount = " + hireinfo.getRoomCount();
						if(hireinfo.getHallCount() != 0){
							hql = hql + " and hallCount = " +  hireinfo.getHallCount();
							if(hireinfo.getType() != 0){
								hql = hql + " and type = " + hireinfo.getType();
								if(hireinfo.getCreateTime() != ""){
									hql = hql + " and createTime >= " + hireinfo.getCreateTime() + " order by id desc";
								}
							}
						}
					}
				}
			}
		}else if(sal.getMinsalary() != 0.0){
			hql = hql + " where salary >= " + sal.getMinsalary();
			if(sal.getMaxsalary() != 0.0){
				hql = hql + " and salary <= " +  sal.getMaxsalary();
				if(hireinfo.getRoomCount() != 0){
					hql = hql + " and roomCount = " + hireinfo.getRoomCount();
					if(hireinfo.getHallCount() != 0){
						hql = hql + " and hallCount = " +  hireinfo.getHallCount();
						if(hireinfo.getType() != 0){
							hql = hql + " and type = " + hireinfo.getType();
							if(hireinfo.getCreateTime() != ""){
								hql = hql + " and createTime >= " + hireinfo.getCreateTime() + " order by id desc";
							}
						}
					}
				}
			}
		}else if(sal.getMaxsalary() != 0.0){
			hql = hql + " where salary <= " +  sal.getMaxsalary();
			if(hireinfo.getRoomCount() != 0){
				hql = hql + " and roomCount = " + hireinfo.getRoomCount();
				if(hireinfo.getHallCount() != 0){
					hql = hql + " and hallCount = " +  hireinfo.getHallCount();
					if(hireinfo.getType() != 0){
						hql = hql + " and type = " + hireinfo.getType();
						if(hireinfo.getCreateTime() != ""){
							hql = hql + " and createTime >= " + hireinfo.getCreateTime() + " order by id desc";
						}
					}
				}
			}
		}else if(hireinfo.getRoomCount() != 0){
			hql = hql + " where roomCount = " + hireinfo.getRoomCount();
			if(hireinfo.getHallCount() != 0){
				hql = hql + " and hallCount = " +  hireinfo.getHallCount();
				if(hireinfo.getType() != 0){
					hql = hql + " and type = " + hireinfo.getType();
					if(hireinfo.getCreateTime() != ""){
						hql = hql + " and createTime >= " + hireinfo.getCreateTime() + " order by id desc";
					}
				}
			}
		}else if(hireinfo.getHallCount() != 0){
			hql = hql + " where hallCount = " +  hireinfo.getHallCount();
			if(hireinfo.getType() != 0){
				hql = hql + " and type = " + hireinfo.getType();
				if(hireinfo.getCreateTime() != ""){
					hql = hql + " and createTime >= " + hireinfo.getCreateTime() + " order by id desc";
				}
			}
		}else if(hireinfo.getType() != 0){
			hql = hql + " where type = " + hireinfo.getType();
			if(hireinfo.getCreateTime() != ""){
				hql = hql + " and createTime >= " + hireinfo.getCreateTime() + " order by id desc";
			}
		}else if(hireinfo.getCreateTime() != ""){
			hql = hql + " where createTime >= " + hireinfo.getCreateTime() + " order by id desc";
		}else{
			hql = hql + " order by id desc";
		}
		s = getSession();
		Query q = s.createQuery(hql);
		List list = q.list();
//		s.close();
		return list;
	}
	
	public List findMyHireinfo(Users user){
		String hql = "from Hireinfo where userId="+user.getId();
		s = getSession();
		Query q = s.createQuery(hql);
		List list = q.list();
//		s.close();
		return list;
	}

}
