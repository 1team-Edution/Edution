-- 테이블 확인용 셀렉트문
select * from tbl_user;
select * from tbl_board;
select * from tbl_comment;
select * from tbl_note;
select * from tbl_todo_list;
select * from tbl_help;

-- 서버 시간 체크용 셀렉트문
select sysdate from dual;

-- 트리거 들이 제대로 생성되지 않아 트리거는 주석처리 해뒀음.
-- oracle DB에서는 restrict 옵션을 지원하지 않아 restrict 키워드 제거함.

-- tbl_user Table Create SQL
drop table tbl_user;
CREATE TABLE tbl_user
(
    user_id          VARCHAR2(20)     NOT NULL, 
    user_pw          VARCHAR2(20)     NOT NULL, 
    user_name        VARCHAR2(20)     NOT NULL, 
    user_email       VARCHAR2(30)     NOT NULL, 
    user_nick        VARCHAR2(20)     NOT NULL, 
    user_photo       VARCHAR2(400)    NOT NULL, 
    user_joindate    DATE             NOT NULL, 
    user_type        CHAR(1)          NOT NULL, 
    user_sns         VARCHAR2(30)     NULL, 
    user_templet     CHAR(1)          NOT NULL, 
     PRIMARY KEY (user_id)
);

alter table tbl_user
modify user_joindate default sysdate;

COMMENT ON TABLE tbl_user IS '사용자';

COMMENT ON COLUMN tbl_user.user_id IS '사용자 아이디';

COMMENT ON COLUMN tbl_user.user_pw IS '사용자 비밀번호';

COMMENT ON COLUMN tbl_user.user_name IS '사용자 이름';

COMMENT ON COLUMN tbl_user.user_email IS '사용자 이메일';

COMMENT ON COLUMN tbl_user.user_nick IS '사용자 닉네임';

COMMENT ON COLUMN tbl_user.user_photo IS '사용자 프사';

COMMENT ON COLUMN tbl_user.user_joindate IS '사용자 가입일자';

COMMENT ON COLUMN tbl_user.user_type IS '사용자 유형';

COMMENT ON COLUMN tbl_user.user_sns IS '사용자 SNS';

COMMENT ON COLUMN tbl_user.user_templet IS '템플릿';

CREATE UNIQUE INDEX UQ_tbl_user_1
    ON tbl_user(user_nick);

-- tbl_board Table Create SQL
CREATE TABLE tbl_board
(
    brd_seq        NUMBER(18, 0)     NOT NULL, 
    brd_title      VARCHAR2(400)     NOT NULL, 
    brd_content    VARCHAR2(4000)    NOT NULL, 
    brd_file       VARCHAR2(400)     NULL, 
    brd_date       DATE              NOT NULL, 
    user_id        VARCHAR2(20)      NOT NULL, 
    brd_cnt        NUMBER(18, 0)     NOT NULL, 
    brd_likes      NUMBER(18, 0)     NOT NULL, 
     PRIMARY KEY (brd_seq)
);

CREATE SEQUENCE tbl_board_SEQ
START WITH 1
INCREMENT BY 1;

-- 트리거 파트 제대로 작동 안함 문제 확인 필요 --
--CREATE OR REPLACE TRIGGER tbl_board_AI_TRG
--BEFORE INSERT ON tbl_board 
--REFERENCING NEW AS NEW FOR EACH ROW 
--BEGIN 
--    SELECT tbl_board_SEQ.NEXTVAL
--    INTO :NEW.brd_seq
--    FROM DUAL;
--END;

--DROP TRIGGER tbl_board_AI_TRG;

--DROP SEQUENCE tbl_board_SEQ;

COMMENT ON TABLE tbl_board IS '게시판';

COMMENT ON COLUMN tbl_board.brd_seq IS '글 순번';

COMMENT ON COLUMN tbl_board.brd_title IS '글 제목';

COMMENT ON COLUMN tbl_board.brd_content IS '글 내용';

COMMENT ON COLUMN tbl_board.brd_file IS '글 첨부파일';

COMMENT ON COLUMN tbl_board.brd_date IS '글 작성일자';

COMMENT ON COLUMN tbl_board.user_id IS '사용자 아이디';

COMMENT ON COLUMN tbl_board.brd_cnt IS '글 조회수';

COMMENT ON COLUMN tbl_board.brd_likes IS '글 좋아요수';

ALTER TABLE tbl_board
    ADD CONSTRAINT FK_tbl_board_user_id_tbl_user_ FOREIGN KEY (user_id)
        REFERENCES tbl_user (user_id);

-- tbl_comment Table Create SQL
CREATE TABLE tbl_comment
(
    cmt_seq        NUMBER(18, 0)     NOT NULL, 
    brd_seq        NUMBER(18, 0)     NOT NULL, 
    cmt_content    VARCHAR2(4000)    NOT NULL, 
    cmt_date       DATE              NOT NULL, 
    user_id        VARCHAR2(20)      NOT NULL, 
    cmt_private    CHAR(1)           NOT NULL, 
    cmt_parent     NUMBER(18, 0)     NULL, 
     PRIMARY KEY (cmt_seq)
);

CREATE SEQUENCE tbl_comment_SEQ
START WITH 1
INCREMENT BY 1;

-- 트리거 파트 제대로 작동 안함 문제 확인 필요 --
--CREATE OR REPLACE TRIGGER tbl_comment_AI_TRG
--BEFORE INSERT ON tbl_comment 
--REFERENCING NEW AS NEW FOR EACH ROW 
--BEGIN 
--    SELECT tbl_comment_SEQ.NEXTVAL
--    INTO :NEW.cmt_seq
--    FROM DUAL;
--END;

--DROP TRIGGER tbl_comment_AI_TRG;

--DROP SEQUENCE tbl_comment_SEQ;

COMMENT ON TABLE tbl_comment IS '댓글';

COMMENT ON COLUMN tbl_comment.cmt_seq IS '댓글 순번';

COMMENT ON COLUMN tbl_comment.brd_seq IS '원글 순번';

COMMENT ON COLUMN tbl_comment.cmt_content IS '댓글 내용';

COMMENT ON COLUMN tbl_comment.cmt_date IS '댓글 작성일자';

COMMENT ON COLUMN tbl_comment.user_id IS '댓글 작성자';

COMMENT ON COLUMN tbl_comment.cmt_private IS '비밀댓글여부';

COMMENT ON COLUMN tbl_comment.cmt_parent IS '상위 댓글';

ALTER TABLE tbl_comment
    ADD CONSTRAINT FK_tbl_comment_user_id_tbl_use FOREIGN KEY (user_id)
        REFERENCES tbl_user (user_id) ;

ALTER TABLE tbl_comment
    ADD CONSTRAINT FK_tbl_comment_brd_seq_tbl_boa FOREIGN KEY (brd_seq)
        REFERENCES tbl_board (brd_seq) ;
        
-- tbl_note Table Create SQL
CREATE TABLE tbl_note
(
    note_seq        NUMBER(18, 0)     NOT NULL, 
    note_title      VARCHAR2(400)     NOT NULL, 
    note_content    VARCHAR2(4000)    NOT NULL, 
    note_tag        VARCHAR2(400)     NULL, 
    user_id         VARCHAR2(20)      NOT NULL, 
    note_date       DATE              NOT NULL, 
    note_parent     NUMBER(18, 0)     NULL, 
    note_file       VARCHAR2(400)     NULL, 
     PRIMARY KEY (note_seq)
);        
        
CREATE SEQUENCE tbl_note_SEQ
START WITH 1
INCREMENT BY 1;        
   
-- 트리거 파트 제대로 작동 안함 문제 확인 필요 --     
--CREATE OR REPLACE TRIGGER tbl_note_AI_TRG
--BEFORE INSERT ON tbl_note 
--REFERENCING NEW AS NEW FOR EACH ROW 
--BEGIN 
--    SELECT tbl_note_SEQ.NEXTVAL
--    INTO :NEW.note_seq
--    FROM DUAL;
--END;

--DROP TRIGGER tbl_note_AI_TRG;

--DROP SEQUENCE tbl_note_SEQ;

COMMENT ON TABLE tbl_note IS '노트';

COMMENT ON COLUMN tbl_note.note_seq IS '노트 순번';

COMMENT ON COLUMN tbl_note.note_title IS '노트 제목';

COMMENT ON COLUMN tbl_note.note_content IS '노트 내용';

COMMENT ON COLUMN tbl_note.note_tag IS '노트 태그';

COMMENT ON COLUMN tbl_note.user_id IS '작성자 아이디';

COMMENT ON COLUMN tbl_note.note_date IS '노트 작성일';

COMMENT ON COLUMN tbl_note.note_parent IS '상위항목';

COMMENT ON COLUMN tbl_note.note_file IS '노트 첨부파일';

ALTER TABLE tbl_note
    ADD CONSTRAINT FK_tbl_note_user_id_tbl_user_u FOREIGN KEY (user_id)
        REFERENCES tbl_user (user_id) ;

-- tbl_todo_list Table Create SQL
CREATE TABLE tbl_todo_list
(
    todo_seq        NUMBER(18, 0)     NOT NULL, 
    todo_title      VARCHAR2(400)     NOT NULL, 
    todo_content    VARCHAR2(4000)    NOT NULL, 
    todo_duedate    DATE              NULL, 
    todo_tag        VARCHAR2(50)      NULL, 
    todo_yn         CHAR(1)           NOT NULL, 
    todo_percent    NUMBER(18, 0)     NOT NULL, 
    user_id         VARCHAR2(20)      NOT NULL, 
    reg_date        DATE              NOT NULL, 
     PRIMARY KEY (todo_seq)
);

CREATE SEQUENCE tbl_todo_list_SEQ
START WITH 1
INCREMENT BY 1;

-- 트리거 파트 제대로 작동 안함 문제 확인 필요 --
--CREATE OR REPLACE TRIGGER tbl_todo_list_AI_TRG
--BEFORE INSERT ON tbl_todo_list 
--REFERENCING NEW AS NEW FOR EACH ROW 
--BEGIN 
--    SELECT tbl_todo_list_SEQ.NEXTVAL
--    INTO :NEW.todo_seq
--    FROM DUAL;
--END;

--DROP TRIGGER tbl_todo_list_AI_TRG;

--DROP SEQUENCE tbl_todo_list_SEQ;

COMMENT ON TABLE tbl_todo_list IS '할 일 목록';

COMMENT ON COLUMN tbl_todo_list.todo_seq IS '할일 순번';

COMMENT ON COLUMN tbl_todo_list.todo_title IS '할일 제목';

COMMENT ON COLUMN tbl_todo_list.todo_content IS '할일 내용';

COMMENT ON COLUMN tbl_todo_list.todo_duedate IS '할일 마감일';

COMMENT ON COLUMN tbl_todo_list.todo_tag IS '할일 태그';

COMMENT ON COLUMN tbl_todo_list.todo_yn IS '할일 완료여부';

COMMENT ON COLUMN tbl_todo_list.todo_percent IS '할일 달성률';

COMMENT ON COLUMN tbl_todo_list.user_id IS '사용자 아이디';

COMMENT ON COLUMN tbl_todo_list.reg_date IS '등록 일자';

ALTER TABLE tbl_todo_list
    ADD CONSTRAINT FK_tbl_todo_list_user_id_tbl_u FOREIGN KEY (user_id)
        REFERENCES tbl_user (user_id) ;

-- tbl_help Table Create SQL
CREATE TABLE tbl_help
(
	help_seq number(18,0) NOT NULL,
	user_id varchar2(20) NOT NULL,
	help_content varchar2(4000) NOT NULL,
	help_date date NULL,
	 PRIMARY KEY (help_seq)
);

CREATE SEQUENCE tbl_help_SEQ
START WITH 1
INCREMENT BY 1;

-- 트리거 파트 제대로 작동 안함 문제 확인 필요 --
--CREATE OR REPLACE TRIGGER tbl_help_AI_TRG
--BEFORE INSERT ON tbl_help 
--REFERENCING NEW AS NEW FOR EACH ROW 
--BEGIN 
--    SELECT tbl_help_SEQ.NEXTVAL
--    INTO :NEW.help_seq
--    FROM DUAL;
--END;

--DROP TRIGGER tbl_help_AI_TRG;

--DROP SEQUENCE tbl_help_SEQ;

COMMENT ON TABLE tbl_help IS '문의하기';

COMMENT ON COLUMN tbl_help.help_seq IS '문의 번호';

COMMENT ON COLUMN tbl_help.user_id IS '사용자 아이디';

COMMENT ON COLUMN tbl_help.help_content IS '문의 내용';

COMMENT ON COLUMN tbl_help.help_date IS '문의 작성일자';

ALTER TABLE tbl_help
    ADD CONSTRAINT FK_tbl_help_user_id_tbl_user_u FOREIGN KEY (user_id)
        REFERENCES tbl_user (user_id) ;