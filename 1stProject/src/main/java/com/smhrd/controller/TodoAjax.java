package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.TodoDAO;
import com.smhrd.model.TodoDTO;

public class TodoAjax implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		response.setCharacterEncoding("UTF-8");
		String user_id = request.getParameter("user_id");
		PrintWriter out = null;
		
		try {
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		TodoDAO dao = new TodoDAO();
		
		ArrayList<TodoDTO> list = dao.selectyn();
		System.out.println(list);
		Gson gson = new Gson();
		String json = gson.toJson(list);
		
		out.print(json);
		
		return null;
	}

}
