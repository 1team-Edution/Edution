package com.smhrd.controller.todo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.smhrd.controller.Controller;
import com.smhrd.model.TodoDAO;
import com.smhrd.model.TodoDTO;

public class TodoTagSearchCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		ArrayList<TodoDTO> todoDtos = (ArrayList<TodoDTO>) session.getAttribute("todolist");
		String tag = request.getParameter("checkedtag");
		String[] tags=tag.split("-");
		
		
		TodoDAO dao = new TodoDAO();
		ArrayList<TodoDTO> result = dao.tagSearch(todoDtos,tags);
		
		Gson gson = new Gson();
		String jsonArr = gson.toJson(result);
		
		response.setContentType("text/html; charset=UTF-8"); 
		PrintWriter out;
		try {
			out = response.getWriter();
			out.print(jsonArr);
		} catch (IOException e) {
			e.printStackTrace();
		}	
		
		return null;
	}

}
