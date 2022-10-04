package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardDTO;

public class BoardInsertCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String savePath = request.getServletContext().getRealPath("C:/Users/smhrd/Desktop/FirstProjectImage");
		
		System.out.println(savePath);
		int maxSize = 1024 * 1024 * 5;
		
		String encoding = "UTF-8";
		
		MultipartRequest multi = null;
		
		try {
			multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		
		String file = multi.getFilesystemName("file");
		
		String brd_title = request.getParameter("brd_title");
		String brd_content = request.getParameter("brd_content");
		int brd_likes = Integer.parseInt(request.getParameter("brd_likes"));
		String user_id = request.getParameter("user_id");
		
		brd_likes += 1;
		System.out.println(brd_title);
		System.out.println(brd_content);
		System.out.println(user_id);
		System.out.println(brd_likes);
		
		BoardDTO dto = new BoardDTO();
		dto.setBrd_title(brd_title);
		dto.setBrd_content(brd_content);
		dto.setBrd_likes(brd_likes);
		dto.setUser_id(user_id);
		dto.setBrd_file(file);
		BoardDAO dao = new BoardDAO();
		
		int result = dao.insert(dto);
		System.out.println("result 갯수" + result);
		if(result > 0) {
			System.out.println("게시글 입력완료");
			return null;
			
		}else {
			System.out.println("게시글 입력실패");
			return null;
		}
	}

}

