package com.smhrd.model;

import java.sql.Date;

public class UserDTO {

	 // 사용자 아이디 
    private String user_id;

    // 사용자 비밀번호 
    private String user_pw;

    // 사용자 이름 
    private String user_name;

    // 사용자 이메일 
    private String user_email;

    // 사용자 닉네임 
    private String user_nick;

    // 사용자 프사 
    private String user_photo;

    // 사용자 가입일자 
    private Date user_joindate;

    // 사용자 유형 
    private String user_type;

    // 사용자 SNS 
    private String user_sns;

    // 템플릿 
    private String user_templet;
    
    
    
    
    

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_nick() {
		return user_nick;
	}

	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}

	public String getUser_photo() {
		return user_photo;
	}

	public void setUser_photo(String user_photo) {
		this.user_photo = user_photo;
	}

	public Date getUser_joindate() {
		return user_joindate;
	}

	public void setUser_joindate(Date user_joindate) {
		this.user_joindate = user_joindate;
	}

	public String getUser_type() {
		return user_type;
	}

	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}

	public String getUser_sns() {
		return user_sns;
	}

	public void setUser_sns(String user_sns) {
		this.user_sns = user_sns;
	}

	public String getUser_templet() {
		return user_templet;
	}

	public void setUser_templet(String user_templet) {
		this.user_templet = user_templet;
	}
    
    
	
	
	
	
	
}
