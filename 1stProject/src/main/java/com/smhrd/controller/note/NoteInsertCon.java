package com.smhrd.controller.note;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.Controller;
import com.smhrd.model.NoteDAO;
import com.smhrd.model.NoteDTO;

public class NoteInsertCon implements Controller {
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		response.setCharacterEncoding("UTF-8");
		String note_title = request.getParameter("note_title");
		String note_content = request.getParameter("note_content");
		String user_id = request.getParameter("user_id");
		
		// 2. DAO로 보내줄 데이터 하나로 묶기 - 생성자 없이 setter 메소드 활용해서 만들어주기!
		NoteDTO note = new NoteDTO();
		note.setNote_title(note_title);
		note.setNote_content(note_content);
		note.setUser_id(user_id);

		NoteDAO dao = new NoteDAO();
		int row = dao.insert(note);
		
		// 여기는 아직 정확하지 않습니다--------
		if (row > 0) {

			return "redirect:/NoteSelectAll.do"; 

		} else {
			return "redirect:/NoteInsert.do";
		}
	}
}
