package com.smhrd.controller.note;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.controller.Controller;
import com.smhrd.model.NoteDAO;
import com.smhrd.model.NoteDTO;

public class NoteAjaxUpdate implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		response.setCharacterEncoding("UTF-8");
		String note_content = request.getParameter("note_content");
		String note_seq = request.getParameter("note_seq");
		String note_title = request.getParameter("note_title");
		String user_id = request.getParameter("user_id");
		
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		NoteDTO note = new NoteDTO();
		note.setNote_content(note_content);
		note.setNote_id(note_seq);
		note.setNote_title(note_title);
		note.setUser_id(user_id);
		
		NoteDAO dao = new NoteDAO();
		dao.update(note);
		
		Gson gson = new Gson();
		String json = gson.toJson(note);
		out.print(json);
		
		return null;
	}

}
