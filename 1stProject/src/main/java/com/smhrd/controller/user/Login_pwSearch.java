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



@WebServlet("/Login_pwSearch")
public class Login_pwSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		
		System.out.println(id);
		System.out.println(email);
		
		 UserDTO dto = new UserDTO();
			dto.setUser_id(id);
	        dto.setUser_email(email);
	        
	        UserDAO dao = new UserDAO();
			
			UserDTO userdto = dao.LoginpwSearch(dto);
			
			PrintWriter out = response.getWriter();
			if(userdto != null) {	
				System.out.println(userdto.getUser_pw());
				 out.print(userdto.getUser_pw());
				
					
					
				} else {
					out.print("fail");
				}
		
	}

}
