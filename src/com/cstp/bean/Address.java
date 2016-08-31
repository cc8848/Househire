package com.cstp.bean;

public class Address {

	private String county;
	private String street;
	private int i;
	private int j;
	String []counties = {
			"","沙坪坝","渝中","北碚","江北区","南岸","渝北"
	};
	String [][]streets = {
			{""},
			{"","大学城","凤天路","三峡广场","工人村","小龙坎","其它"},
			{"","解放碑","菜园坝","朝天门","大坪","观音桥","上清寺","其它"},
			{"","城北区","城南区","老城区","童南区","其它"},
			{"","北滨路","大石坝","观音桥","红旗河沟","五里店","黄泥磅","其它"},
			{"","南滨路","弹子石","回龙湾","南平","学府路","其它"},
			{"","大竹林","龙头寺","冉家坝","一碗水","人和","其它"}
	};
	public String getCounty(int i){
		return counties[i];
	}
	
	public String getStreet(int i, int j){
		return streets[i][j];
	}

	public String getCounty() {
		return county;
	}

	public void setCounty(String county) {
		this.county = county;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public int getI() {
		return i;
	}

	public void setI(int i) {
		this.i = i;
	}

	public int getJ() {
		return j;
	}

	public void setJ(int j) {
		this.j = j;
	}

}
