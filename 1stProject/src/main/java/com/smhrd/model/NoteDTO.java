package com.smhrd.model;
	// 노트 
	public class NoteDTO {

	    // 노트 순번 
	    private String note_seq;

	    // 노트 제목 
	    private String note_title;

	    // 노트 내용 
	    private String note_content;
	   
	    // 작성자 아이디 
	    private String user_id;

	    // 노트 작성일 
	    private String note_date;
	    
	    // 노트 파일
	    private String note_file;
	    
	    // 노트 상위 번호
	    private String note_parent;
	    
	
	    
	    
	        
		public NoteDTO() {
			super();
		}
		
		
				
		
		public String getNote_parent() {
			return note_parent;
		}




		public void setNote_parent(String note_parent) {
			this.note_parent = note_parent;
		}




		



		public String getNote_seq() {
			return note_seq;
		}

		public void setNote_seq(String note_seq) {
			this.note_seq = note_seq;
		}

		public String getNote_file() {
			return note_file;
		}

		public void setNote_file(String note_file) {
			this.note_file = note_file;
		}

		public String getNote_id() {
			return note_seq;
		}

		public void setNote_id(String note_seq) {
			this.note_seq = note_seq;
		}

		public String getNote_title() {
			return note_title;
		}

		public void setNote_title(String note_title) {
			this.note_title = note_title;
		}

		public String getNote_content() {
			return note_content;
		}

		public void setNote_content(String note_content) {
			this.note_content = note_content;
		}

		

		public String getUser_id() {
			return user_id;
		}

		public void setUser_id(String user_id) {
			this.user_id = user_id;
		}

		public String getNote_date() {
			return note_date;
		}

		public void setNote_date(String note_date) {
			this.note_date = note_date;
		}

	  
	    
	    
}