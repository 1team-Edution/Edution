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


@WebServlet("/LoginidSearch")
public class LoginidSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		  
		
        
        UserDTO dto = new UserDTO();
		dto.setUser_name(name);
        dto.setUser_email(email);
		
		UserDAO dao = new UserDAO();
		
		UserDTO userdto = dao.LoginidSearch(dto);
		
		PrintWriter out = response.getWriter();
		if(userdto != null) {	
			System.out.println(userdto.getUser_id());
			 out.print(userdto.getUser_id());
			
				
				
			} else {
				out.print("fail");
			}
        
	}

}
