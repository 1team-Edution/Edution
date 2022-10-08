package com.smhrd.controller.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.UserDAO;
import com.smhrd.model.UserDTO;


@WebServlet("/MypageChecknick")
public class MypageChecknick extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		
		//닉네임
		
		String nick = request.getParameter("nick");
		  
        System.out.println(nick);
        
        
        UserDTO dto = new UserDTO();
		dto.setUser_nick(nick);
		UserDAO dao = new UserDAO();
		String result = dao.nickSame(dto);
		
		
		
		  if(result != null) { 
		  System.out.println("닉네임 실패"+result);
		  out.print("fail");
		  
		  
		  } else { System.out.println("닉네임 성공"+result);
		  out.print("success"); }
		 
	}

}