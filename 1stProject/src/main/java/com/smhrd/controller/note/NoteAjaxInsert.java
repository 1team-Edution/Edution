package com.smhrd.controller.note;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.controller.Controller;
import com.smhrd.model.NoteDAO;
import com.smhrd.model.NoteDTO;

public class NoteAjaxInsert implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		response.setCharacterEncoding("UTF-8");
		
		
		String savePath = request.getServletContext().getRealPath("resources/notefile");
		int maxSize = 1024 * 1024 * 5;
		String encoding = "UTF-8";
		MultipartRequest multi = null;
		
		try {
			multi = new MultipartRequest(
					request,
					savePath,
					maxSize,
					encoding,
					new DefaultFileRenamePolicy() //파일이름 중복처리
					);
		
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		String note_title = multi.getParameter("note_title");
		String note_content = multi.getParameter("note_content");
		String user_id = multi.getParameter("user_id");
		String note_parent = multi.getParameter("note_parent");
		String note_file = null;
		
		if(multi.getFilesystemName("note_file") == null) {
			note_file = "";
		}else{
			note_file = multi.getFilesystemName("note_file");
			
		}
		if(multi.getParameter("note_parent") == null) {
			
			note_parent= "0";
		}else {
			note_parent = multi.getParameter("note_parent");
		}
		
		
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		NoteDTO note = new NoteDTO(); 
		note.setNote_title(note_title);
		note.setNote_content(note_content);
		note.setUser_id(user_id);
		note.setNote_file(note_file);
		note.setNote_parent(note_parent);
		
		
		
		NoteDAO dao = new NoteDAO();
		dao.insert(note);
		
		Gson gson = new Gson();
		String json = gson.toJson(note);
		out.print(json);
		
		return null;
	}

}
