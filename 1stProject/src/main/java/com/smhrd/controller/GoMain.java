package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import javax.servlet.http.HttpSession;
import com.smhrd.model.TodoDAO;
import com.smhrd.model.TodoDTO;
import com.smhrd.model.UserDTO;

public class GoMain implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//userdto 받아서 tododto 객체바인딩하고 메인으로가는 controller
		
		HttpSession session = request.getSession();
		UserDTO userDto = (UserDTO) session.getAttribute("userDto");
		TodoDAO dao = new TodoDAO();
		
		String id=userDto.getUser_id();
		
		ArrayList<TodoDTO> todoDtos = dao.callTodo(id);
//		request.setAttribute("todo", todoDtos);
		Gson gson = new Gson();
		String jsonArr = gson.toJson(todoDtos);
		response.setContentType("application/json; charset=UTF-8"); 
		PrintWriter out;
		try {
			out = response.getWriter();
			out.print(jsonArr);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "Main.html";
	}

}
