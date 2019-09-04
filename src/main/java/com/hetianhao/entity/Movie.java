package com.hetianhao.entity;
//µÁ”∞
public class Movie {
	private Integer mid;
	private String mname;
	private String mjs;
	private String doctor;
	private String mdate;
	
	private Integer did;
	private String dname;
	public Integer getMid() {
		return mid;
	}
	public void setMid(Integer mid) {
		this.mid = mid;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMjs() {
		return mjs;
	}
	public void setMjs(String mjs) {
		this.mjs = mjs;
	}
	public String getDoctor() {
		return doctor;
	}
	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	public Integer getDid() {
		return did;
	}
	public void setDid(Integer did) {
		this.did = did;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public Movie() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Movie(Integer mid, String mname, String mjs, String doctor, String mdate, Integer did, String dname) {
		super();
		this.mid = mid;
		this.mname = mname;
		this.mjs = mjs;
		this.doctor = doctor;
		this.mdate = mdate;
		this.did = did;
		this.dname = dname;
	}
	@Override
	public String toString() {
		return "Movie [mid=" + mid + ", mname=" + mname + ", mjs=" + mjs + ", doctor=" + doctor + ", mdate=" + mdate
				+ ", did=" + did + ", dname=" + dname + "]";
	}
	
	
}
