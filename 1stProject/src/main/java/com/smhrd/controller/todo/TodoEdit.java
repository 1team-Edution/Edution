package com.smhrd.controller.todo;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.TodoDAO;
import com.smhrd.model.TodoDTO;
import com.smhrd.model.UserDTO;

@WebServlet("/TodoEdit")
public class TodoEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		String title=request.getParameter("title");
		String[] tags=request.getParameterValues("tag");
		String date=request.getParameter("date");
		String content = request.getParameter("content"); //null이면 그대로 넣음
		String todonum=request.getParameter("todonum");
		int yn=Integer.parseInt(request.getParameter("yn"));
		
		TodoDTO dto = new TodoDTO(todonum,title,content,tags,yn,null,date);
		TodoDAO dao = new TodoDAO();
		if(date==null) {dao.editF();}
		else {dao.editT();}		
		
	}

}

