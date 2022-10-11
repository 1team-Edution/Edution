package com.smhrd.controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserDTO;


@WebServlet("/MyPageImgServlet")
public class MyPageImgServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
				
		String savePath = request.getServletContext().getRealPath("resources/image");

		int maxSize = 1024 * 1024 * 5;

		String encoding = "EUC-KR";

		MultipartRequest multi = null;

		try {
			
			multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
			
		} catch (IOException e) {

			e.printStackTrace();
		}

		
		 System.out.println(multi.getFilesystemName("uploadFile"));
		 System.out.println(multi.getParameter("list_id"));
		
		 String img = multi.getFilesystemName("uploadFile");
		 String id = multi.getParameter("list_id");
		 
		 UserDTO dto = new UserDTO();
		 
		  dto.setUser_photo(img);
		  dto.setUser_id(id);
		  
		  UserDAO dao = new UserDAO(); 
		 
		 int row = dao.img_insert(dto);
		

		// 사진 저장안하면 오류가 나기 때문에 썼습니다.
		/*
		 * if (img == null) {
		 * 
		 * user_photo = "사진없음"; }
		 
			 
			 */
	

	
		
	}

}
