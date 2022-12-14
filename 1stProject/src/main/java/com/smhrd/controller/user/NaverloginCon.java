package com.smhrd.controller.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.controller.Controller;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserDTO;

public class NaverloginCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		
		String email = request.getParameter("email");
		
		System.out.println("앞문 : " + email);
		
		UserDTO dto = new UserDTO();
		dto.setUser_email(email);
		
		UserDAO dao = new UserDAO();
		UserDTO list = dao.Naverlogin(dto);
		
		System.out.println("뒷문 : " +list.getUser_id());
		try {
			 if(list != null){
				 
				 HttpSession session = request.getSession();
		            session.setAttribute("loginUser", list);
		            
		            request.setAttribute("list", list);
		            
		            
		            return "redirect:/Main.do";
		            
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
