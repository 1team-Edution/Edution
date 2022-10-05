package com.smhrd.model;
	// 노트 
	public class NoteDTO {

	    // 노트 순번 
	    private String note_seq;

	    // 노트 제목 
	    private String note_title;

	    // 노트 내용 
	    private String note_content;

	    // 노트 태그 
	    private String note_tag;

	    // 작성자 아이디 
	    private String user_id;

	    // 노트 작성일 
	    private String note_date;
	    
	    private String note_file;
	        
		public NoteDTO() {
			super();
		}

		public NoteDTO(String note_seq, String note_title, String note_content, String note_tag, String user_id,
				String note_date) {
			super();
			this.note_seq = note_seq;
			this.note_title = note_title;
			this.note_content = note_content;
			this.note_tag = note_tag;
			this.user_id = user_id;
			this.note_date = note_date;
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

		public String getNote_tag() {
			return note_tag;
		}

		public void setNote_tag(String note_tag) {
			this.note_tag = note_tag;
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