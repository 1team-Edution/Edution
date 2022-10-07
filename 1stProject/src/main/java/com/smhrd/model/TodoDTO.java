package com.smhrd.model;

public class TodoDTO {
	private String todo_seq;
	private String todo_title;
	private String todo_content;
	private String todo_tag;
	private int todo_yn;
	private String user_id;
	private String reg_date;
	
	

	public TodoDTO(String id, String todoHead, String todoBody, String[] tags, String date) {
		todo_title=todoHead;
		todo_content=todoBody;
		String str="";
		for(int i=0;i<tags.length;i++) {
				str+="#"+tags[i];
			}
		// db저장형식 : #tag1#tag2#tag3
		todo_tag=str;
		todo_yn=0;
		user_id=id;
		reg_date=date;

	}



	public TodoDTO() {
	}



	public String getTodo_seq() {
		return todo_seq;
	}


	public void setTodo_seq(String todo_seq) {
		this.todo_seq = todo_seq;
	}


	public String getTodo_title() {
		return todo_title;
	}


	public void setTodo_title(String todo_title) {
		this.todo_title = todo_title;
	}


	public String getTodo_content() {
		return todo_content;
	}


	public void setTodo_content(String todo_content) {
		this.todo_content = todo_content;
	}


	public String getTodo_tag() {
		return todo_tag;
	}


	public void setTodo_tag(String todo_tag) {
		this.todo_tag = todo_tag;
	}


	public int getTodo_yn() {
		return todo_yn;
	}


	public void setTodo_yn(int todo_yn) {
		this.todo_yn = todo_yn;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getReg_date() {
		return reg_date;
	}


	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}




		
				
	}

	



	

