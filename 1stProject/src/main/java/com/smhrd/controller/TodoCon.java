package com.smhrd.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.TodoDAO;
import com.smhrd.model.TodoDTO;

public class TodoCon implements Controller {

	
// 사용자가 입력한 할일을 db에 저장하는 controller
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String todoHead=request.getParameter("todoHead");
		String todoBody=request.getParameter("todoBody");
		String[] tags=request.getParameterValues("tag");
		String date = request.getParameter("date");
		if(date==null) {date="2500-1-1";}
		TodoDTO dto = new TodoDTO(todoHead,todoBody,tags,date);
		TodoDAO dao = new TodoDAO();
		dao.insert(dto);
		
		return "Main";
	}

}
