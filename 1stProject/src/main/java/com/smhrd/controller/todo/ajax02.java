package com.smhrd.controller.todo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.smhrd.model.UserDTO;

@WebServlet("/ajax02")
public class ajax02 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		UserDTO userDto = (UserDTO) session.getAttribute("loginUser");
		
		Gson gson = new Gson();
		String jsonArr = gson.toJson(userDto);
		
		response.setContentType("text/html; charset=UTF-8"); 
		PrintWriter out;
		try {
			out = response.getWriter();
			out.print(jsonArr);
		} catch (IOException e) {
			e.printStackTrace();
		}	

	}

}
