package com.smhrd.model;

public class TodoDTO {

	private String todo_title;
	private String todo_content;
	private String todo_tag;
	private String todo_reg_date;
	
	public TodoDTO(String todoHead, String todoBody, String[] tags, String date) {
			todo_title=todoHead;
			todo_content=todoBody;
			String str="";
			for(int i=0;i<tags.length;i++) {
					str+="#"+tags[i];
				}
			// db저장형식 : #tag1#tag2#tag3
			todo_tag=str;
			todo_reg_date=date;
			
			System.out.println(todo_title+todo_content+todo_tag+todo_reg_date);
			}
		
				
	}

