package com.smhrd.model;

public class BoardDTO {
	
	int brd_seq;
	String brd_title;
	String brd_content;
	String brd_file;
	String brd_date;
	String user_id;
	String brd_cnt;
	String brd_likes;
	
	String user_name;
	
	
	public int getBrd_seq() {
		return brd_seq;
	}
	public void setBrd_seq(int brd_seq) {
		this.brd_seq = brd_seq;
	}
	public String getBrd_title() {
		return brd_title;
	}
	public void setBrd_title(String brd_title) {
		this.brd_title = brd_title;
	}
	public String getBrd_content() {
		return brd_content;
	}
	public void setBrd_content(String brd_content) {
		this.brd_content = brd_content;
	}
	public String getBrd_file() {
		return brd_file;
	}
	public void setBrd_file(String brd_file) {
		this.brd_file = brd_file;
	}
	public String getBrd_date() {
		return brd_date;
	}
	public void setBrd_date(String brd_date) {
		this.brd_date = brd_date;
	}
	public String getBrd_cnt() {
		return brd_cnt;
	}
	public void setBrd_cnt(String brd_cnt) {
		this.brd_cnt = brd_cnt;
	}
	public String getBrd_likes() {
		return brd_likes;
	}
	public void setBrd_likes(String brd_likes) {
		this.brd_likes = brd_likes;
	}
	public String getUser_id() {
		return user_id;
	}
	
	

}
