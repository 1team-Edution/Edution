package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.TodoDAO;

public class TodoEditCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		TodoDAO dao = new TodoDAO();
		String todonum = request.getParameter("todonum");
		int row = dao.edit(todonum);
		return "redirect:/GoMain.do";

	}

}
