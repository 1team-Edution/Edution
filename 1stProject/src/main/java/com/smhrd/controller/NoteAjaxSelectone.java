package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.NoteDAO;
import com.smhrd.model.NoteDTO;

public class NoteAjaxSelectone implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		response.setCharacterEncoding("UTF-8");
		
		String note_seq = request.getParameter("note_seq");
		
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		NoteDAO dao = new NoteDAO();
		NoteDTO note = dao.selectOne(note_seq);
		
		request.setAttribute("note", note);
		
		Gson gson = new Gson();
		String json = gson.toJson(note);
		out.print(json);
		
		
		
		return null;
	}

}
