package com.smhrd.controller.user;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.Controller;
import com.smhrd.model.UserDTO;

public class Account_deleteCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		System.out.println(request.getParameter("list")); 
		
		
		
		
		
		return null;
	}

}
