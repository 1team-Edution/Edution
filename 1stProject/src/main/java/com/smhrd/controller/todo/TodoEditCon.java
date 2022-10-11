package com.smhrd.controller.todo;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.Controller;
import com.smhrd.model.TodoDAO;
import com.smhrd.model.TodoDTO;

public class TodoEditCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

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
		
		try {
			System.out.println("try문 실행");
		TodoDTO dto = new TodoDTO(todonum,title,content,tags,yn,null,date);
		TodoDAO dao = new TodoDAO();
		if(date==null) {dao.editF(dto);}
		else {dao.editT(dto);}
		
		}catch(Exception e) {

			System.out.println("예외발생");
			response.setContentType("text/html");
			response.setCharacterEncoding("utf-8");
			PrintWriter out;
			try {
				out = response.getWriter();
				out.println("<script>alert('제목은 비워 둘 수 없습니다.');location.href='Main.do';</script>");
				out.flush();
				out.close();
			} catch (IOException e1) {
				e1.printStackTrace();
			}
	
		}
		return "redirect:/Main.do";
}}


