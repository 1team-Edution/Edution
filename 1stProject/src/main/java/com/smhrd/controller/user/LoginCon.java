package com.smhrd.controller.user;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.filters.ExpiresFilter.XPrintWriter;

import com.smhrd.controller.Controller;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserDTO;

public class LoginCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
			
			
		
		
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		
		
		
		
		UserDTO dto = new UserDTO();
		
		dto.setUser_id(user_id);
		dto.setUser_pw(user_pw);
		
				
		UserDAO dao = new UserDAO();
		
		ArrayList<UserDTO> list = dao.selectlogin(dto);
		
		
		
		
		
			
		
		
		 
		try {
		 if(list != null){
			 HttpSession session = request.getSession();
	            session.setAttribute("session",list);
	        	request.setAttribute("list", list);
	               
	            
				return "Main.html";
	            
	        }
		 
		 else{
			 
			 response.setContentType("text/html");
		     response.setCharacterEncoding("utf-8");
				
		     PrintWriter out = response.getWriter();
				
				
					
					out.println("<script>alert('로그인 할 수 없습니다');location.href='LoginPage.do';</script>");
					out.flush();
					out.close();
					
				
	            
			 return null;
			 
		 } 
	            
		 }catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				
				return null;
			}
		
		
		
		 
	}

	}
	
	
