package com.cstp.table;

/**
 * Hireinfo entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Hireinfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private Users users;
	private String title;
	private Integer county;
	private Integer street;
	private Float salary;
	private Integer roomCount;
	private Integer hallCount;
	private Integer type;
	private String telephone;
	private String linkman;
	private String houseInfo;
	private String createTime;

	// Constructors

	/** default constructor */
	public Hireinfo() {
	}

	/** minimal constructor */
	public Hireinfo(Users users, String title, String telephone, String linkman) {
		this.users = users;
		this.title = title;
		this.telephone = telephone;
		this.linkman = linkman;
	}

	/** full constructor */
	public Hireinfo(Users users, String title, Integer county, Integer street,
			Float salary, Integer roomCount, Integer hallCount, Integer type,
			String telephone, String linkman, String houseInfo,
			String createTime) {
		this.users = users;
		this.title = title;
		this.county = county;
		this.street = street;
		this.salary = salary;
		this.roomCount = roomCount;
		this.hallCount = hallCount;
		this.type = type;
		this.telephone = telephone;
		this.linkman = linkman;
		this.houseInfo = houseInfo;
		this.createTime = createTime;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getCounty() {
		return this.county;
	}

	public void setCounty(Integer county) {
		this.county = county;
	}

	public Integer getStreet() {
		return this.street;
	}

	public void setStreet(Integer street) {
		this.street = street;
	}

	public Float getSalary() {
		return this.salary;
	}

	public void setSalary(Float salary) {
		this.salary = salary;
	}

	public Integer getRoomCount() {
		return this.roomCount;
	}

	public void setRoomCount(Integer roomCount) {
		this.roomCount = roomCount;
	}

	public Integer getHallCount() {
		return this.hallCount;
	}

	public void setHallCount(Integer hallCount) {
		this.hallCount = hallCount;
	}

	public Integer getType() {
		return this.type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getLinkman() {
		return this.linkman;
	}

	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}

	public String getHouseInfo() {
		return this.houseInfo;
	}

	public void setHouseInfo(String houseInfo) {
		this.houseInfo = houseInfo;
	}

	public String getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

}