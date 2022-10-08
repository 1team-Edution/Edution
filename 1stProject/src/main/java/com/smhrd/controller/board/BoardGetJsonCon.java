package com.smhrd.controller.board;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.controller.Controller;
import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardDTO;

public class BoardGetJsonCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = null;
		
		try {
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		BoardDAO dao = new BoardDAO();
		
		ArrayList<BoardDTO> list = dao.selectAll();
		System.out.println(list);
		Gson gson = new Gson();
		String json = gson.toJson(list);
		
		out.print(json);
		
		return null;	}

}
