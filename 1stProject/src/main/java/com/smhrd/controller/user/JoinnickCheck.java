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


@WebServlet("/JoinnickCheck")
public class JoinnickCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nick = request.getParameter("nick");
		//System.out.println(request.getParameter("user_id")); 
		  
        System.out.println(nick);
        UserDTO dto = new UserDTO();
		  
		  dto.setUser_nick(nick);
		
		  UserDAO dao = new UserDAO();
		  
		  UserDTO result = dao.nickSame(dto);
		  
		  
		  
		 PrintWriter out = response.getWriter(); 
		 
		 if(result != null) {
		 
		  out.print("fail");
		  System.out.println("로우"+result);
		  
			  
		  } else {
			  out.print("success");
		  }
		  
	}

}
