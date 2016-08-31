package com.cstp.table;

import java.util.HashSet;
import java.util.Set;

/**
 * Users entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Users implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String password;
	private Set hireinfos = new HashSet(0);

	// Constructors

	/** default constructor */
	public Users() {
	}

	/** minimal constructor */
	public Users(String name, String password) {
		this.name = name;
		this.password = password;
	}

	/** full constructor */
	public Users(String name, String password, Set hireinfos) {
		this.name = name;
		this.password = password;
		this.hireinfos = hireinfos;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set getHireinfos() {
		return this.hireinfos;
	}

	public void setHireinfos(Set hireinfos) {
		this.hireinfos = hireinfos;
	}

}