package com.smhrd.controller.todo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.Controller;
import com.smhrd.model.TodoDAO;

public class TodoCheckCon2 implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		TodoDAO dao = new TodoDAO();
		String todonum = request.getParameter("todonum");
		int row = dao.checkundo(todonum);
		return "redirect:/Main.do";
	}

}
