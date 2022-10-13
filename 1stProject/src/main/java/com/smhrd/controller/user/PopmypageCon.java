package com.smhrd.controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.controller.Controller;
import com.smhrd.model.UserDTO;

public class PopmypageCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
        
		
		 
		 UserDTO list = (UserDTO) session.getAttribute("loginUser");
         session.setAttribute("loginUser", list);
		
		return "MyPage";
	}

}
