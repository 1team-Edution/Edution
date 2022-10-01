package com.smhrd.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.Controller;

public class BoardDAO implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String brd_title = request.getParameter("brd_title");
		String brd_content = request.getParameter("brd_content");
		String brd_cnt = request.getParameter("brd_cnt");
		String brd_likes = request.getParameter("brd_likes");
		
		System.out.println(brd_title);
		System.out.println(brd_content);
		System.out.println(brd_cnt);
		System.out.println(brd_likes);
		
		
		
		return null;
	}

}
