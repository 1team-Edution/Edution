package com.smhrd.controller.note;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.Controller;
import com.smhrd.model.NoteDAO;
import com.smhrd.model.NoteDTO;

public class NoteSelectOneCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
			String note_seq = request.getParameter("note_seq");
		
			NoteDAO dao = new NoteDAO();
			NoteDTO note = dao.selectOne(note_seq);
			
			request.setAttribute("note", note);
			
			// 여기는 아직 정확하지 않습니다--------
			return "NoteContent";
		
	}

}
