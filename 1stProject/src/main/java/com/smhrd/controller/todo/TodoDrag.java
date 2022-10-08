package com.smhrd.controller.todo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.TodoDAO;

@WebServlet("/TodoDrag")
public class TodoDrag extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		TodoDAO dao = new TodoDAO();
		String divdata = request.getParameter("divdata");
		String[] splitdiv = divdata.split("n");

		String reg_date=splitdiv[0];
		String todonum=splitdiv[1];
		
		dao.dragUpdate(todonum,reg_date);
			
		//이 부분 fromtcon 방식으로 수정
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/Main.html");		
		rd.forward(request, response);
	}
}
