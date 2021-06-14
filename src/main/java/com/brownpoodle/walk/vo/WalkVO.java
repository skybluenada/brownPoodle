package com.brownpoodle.walk.vo;

public class WalkVO {

	
	private String walk_seq;
	private String m_id;
	private String walk_date;
	private String walk_time;
	private String latitude_str;
	private String longtitud_str;
	
	public WalkVO() {}
	
	public WalkVO(String walk_seq, String m_id, String walk_date, 
				  String walk_time, String latitude_str, String longtitud_str) {
		this.walk_seq = walk_seq;
		this.m_id = m_id;
		this.walk_date = walk_date;
		this.walk_time = walk_time;
		this.latitude_str = latitude_str;
		this.longtitud_str = longtitud_str;
	}

	// Getter
	public String getWalk_seq() {
		return walk_seq;
	}

	public String getM_id() {
		return m_id;
	}

	public String getWalk_date() {
		return walk_date;
	}

	public String getWalk_time() {
		return walk_time;
	}

	public String getLatitude_str() {
		return latitude_str;
	}

	public String getLongtitud_str() {
		return longtitud_str;
	}

	// Setter
	public void setWalk_seq(String walk_seq) {
		this.walk_seq = walk_seq;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public void setWalk_date(String walk_date) {
		this.walk_date = walk_date;
	}

	public void setWalk_time(String walk_time) {
		this.walk_time = walk_time;
	}

	public void setLatitude_str(String latitude_str) {
		this.latitude_str = latitude_str;
	}

	public void setLongtitud_str(String longtitud_str) {
		this.longtitud_str = longtitud_str;
	}
	
	
	
	

}
