package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.NoteDAO;
import com.smhrd.model.NoteDTO;

public class NoteUpdateCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String note_content = request.getParameter("note_content");
		String note_seq = request.getParameter("note_seq");
		String note_title = request.getParameter("note_title");
		String user_id = request.getParameter("user_id");
		
		NoteDTO note = new NoteDTO();
		note.setNote_content(note_content);
		note.setNote_id(note_seq);
		note.setNote_title(note_title);
		note.setUser_id(user_id);
		
		
		
		NoteDAO dao = new NoteDAO();
		int row = dao.update(note);
		
		// 여기는 아직 정확하지 않습니다--------
		if(row>0) {
			
			return "redirect:/NoteGoInsert.do";
			
		}else {
			
			return "redirect:/NoteUpdate.do";
			
		}
	}

}
