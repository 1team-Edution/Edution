package com.smhrd.model;

public class CommentDTO {
	String cmt_seq;
	String brd_seq;
	String cmt_content;
	String cmt_date;
	String user_id;
	String cmt_private;
	String cmt_parent;
	
	
	
	public String getCmt_content() {
		return cmt_content;
	}
	public void setCmt_content(String cmt_content) {
		this.cmt_content = cmt_content;
	}
	public String getCmt_parent() {
		return cmt_parent;
	}
	public void setCmt_parent(String cmt_parent) {
		this.cmt_parent = cmt_parent;
	}
	public String getCmt_seq() {
		return cmt_seq;
	}
	public String getBrd_seq() {
		return brd_seq;
	}
	public String getCmt_date() {
		return cmt_date;
	}
	public String getUser_id() {
		return user_id;
	}
	public String getCmt_private() {
		return cmt_private;
	}
	
	
	
	
}
