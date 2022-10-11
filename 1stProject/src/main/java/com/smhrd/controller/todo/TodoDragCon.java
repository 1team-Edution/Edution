package com.smhrd.controller.todo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.Controller;
import com.smhrd.model.TodoDAO;

public class TodoDragCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		TodoDAO dao = new TodoDAO();
		String divdata = request.getParameter("divdata");
		String[] splitdiv = divdata.split("n");

		String reg_date=splitdiv[0];
		String todonum=splitdiv[1];
		
		dao.dragUpdate(todonum,reg_date);
		return "redirect:/Main.do";
	}

}
