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


@WebServlet("/JoinemailCheck")
public class JoinemailCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String email = request.getParameter("email");
		//System.out.println(request.getParameter("user_id")); 
		  
        System.out.println(email);
        UserDTO dto = new UserDTO();
		  
		  dto.setUser_email(email);
		  
		  UserDAO dao = new UserDAO();
		  
		  UserDTO result = dao.emailSame(dto);
		  
		  System.out.println("로우"+result);
		  
		 PrintWriter out = response.getWriter(); 
		 
		 if(result != null) {
		 
		  out.print("fail");
		  
			  
		  } else {
			  out.print("success");
		  }
		  
		 
		
		
		
	}

}
