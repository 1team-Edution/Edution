package com.smhrd.model;

public class QnADTO {
	
	// 필드
	int help_seq;
	String user_id;
	String help_content;
	String help_date;
	
	// user테이블과 조인을 통해 가져올 데이터
	String user_name;
	// 생성자
	public QnADTO(int help_seq, String user_id, String help_content, String help_date, String user_name) {
		super();
		this.help_seq = help_seq;
		this.user_id = user_id;
		this.help_content = help_content;
		this.help_date = help_date;
		this.user_name = user_name;
	}
	

	public QnADTO(String user_id, String help_content, String user_name) {
		super();
		this.user_id = user_id;
		this.help_content = help_content;
		this.user_name = user_name;
	}



	// help_id는 fk이기 때문에 setter메소드가 없음.
	public String getHelp_content() {
		return help_content;
	}


	public void setHelp_content(String help_content) {
		this.help_content = help_content;
	}


	public String getHelp_date() {
		return help_date;
	}


	public void setHelp_date(String help_date) {
		this.help_date = help_date;
	}


	public int getHelp_seq() {
		return help_seq;
	}

	public void setHelp_seq(int help_seq) {
		this.help_seq = help_seq;
	}

	public String getUser_id() {
		return user_id;
	}
	// user table과 조인으로 가져올 getter메소드
	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	
	
	
	
}
