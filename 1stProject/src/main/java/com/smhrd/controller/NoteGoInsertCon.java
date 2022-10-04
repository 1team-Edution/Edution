package com.smhrd.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NoteGoInsertCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		response.setCharacterEncoding("UTF-8");
		// Insert.jsp로 이동
		return "NoteInsert";
		
	}

}
