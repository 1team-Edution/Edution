package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.TodoDAO;
import com.smhrd.model.TodoDTO;

public class TodoCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String todoHead=request.getParameter("todoHead");
		String todoBody=request.getParameter("todoBody");
		String[] tags=request.getParameterValues("tag");
		String date = request.getParameter("date");
		
		TodoDTO dto = new TodoDTO(todoHead,todoBody,tags,date);
		TodoDAO dao = new TodoDAO();
		dao.insert(dto);
	
		
		
		return "Main";
	}

}
