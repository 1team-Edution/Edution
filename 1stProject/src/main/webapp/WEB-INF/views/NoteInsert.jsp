<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>노트 작성</title>
    <link rel="stylesheet" href="./resources/css/app.css" />
    
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="./resources/js/summernote/summernote-lite.js"></script>
<script src="./resources/js/summernote/lang/summernote-ko-KR.js"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
 
  
<style>
 
#title{
	position : sticky;
}
#deleteBotton{
	align="right"
}
#user{
position : sticky;
}
#result_notetitle : hover{
	background : rgba(55,53,47,0.08);
}
.note-editor.note-frame .note-editing-area .note-editable,
.note-editor.note-airframe .note-editing-area .note-editable {
    padding: 20px;
    overflow: auto;
    word-wrap: break-word
}



</style>
  </head>
  <body>
    
    <div id="container">
    
      <div id="left-div"></div>
      <div id="right-div">
        <div id="header">
          <button type="button" id="slideout">>></button>
          <div id="subheader"></div>
        </div>
        <div id="area-below-header">
           
          <div id="box">
            <div id="first">
              <div id="paddedname">
                <div id="icon">🔥</div>
                
              </div>
            </div>
            <div id="second">
              <div id="secondone">
                <div id="searchicon">🔍</div>
                <div id="quickfind">메뉴 1</div>
              </div>
              <div id="secondtwo">
                <div id="timeicon">🔍</div>
                <div id="allupdates">메뉴 2</div>
              </div>
              <div id="secondthree">
                <div id="settingsicon">🔍</div>
                <div id="settings">메뉴 3</div>
              </div>
            </div>
            <div id="third">
              <div id="scroller-vertical">
                <div id="inscroller">
                  <div id="workspace">
                    <div id="insideworkspace">
                      <span>Workspace</span>
                    </div>
                  </div>
                  <div id="page_title">
                  
                    
                  </div>
                </div>

                <div id="inscroller">
                  <div id="workspace">
                    <div id="insideworkspace">
                      <span>Private</span>
                    </div>
                  </div>
                  <div id="addapage" class="one">
                    <div id="settingsicon">󠀫󠀫󠀫󠀫➡️</div>
                    <div id="settings">Some Untitled Page</div>
                  </div>
                  <div id="addapage" class="two">
                    <div id="settingsicon">󠀫󠀫󠀫󠀫➡️</div>
                    <div id="settings">Another Untitled Page</div>
                  </div>
                </div>
                <div id="inscroller">
                  <div id="addapage" class="three">
                    <div id="settingsicon">󠀫󠀫󠀫󠀫🧱</div>
                    <div id="settings">Templates</div>
                  </div>
                  <div id="addapage" class="four">
                    <div id="settingsicon">󠀫󠀫󠀫󠀫📥</div>
                    <div id="settings">Imports</div>
                  </div>
                  <div id="addapage" class="five">
                    <div id="settingsicon">󠀫󠀫󠀫󠀫🗑️</div>
                    <div id="settings">Trash</div>
                  </div>
                </div>
              </div>
            </div>
            <div id="fourth">
              <div id="paddednamelast">
                <div id="icon">➕</div>
                <div id="name" onclick = "location.href='NoteGoInsert.do';">New Page</div>
              </div>
              
            </div>
          </div>
          
          <div id="btn"></div>
          
          <div id="cover"></div>
          
          
          <div id = "notemain">
           <form id = "frm" name ="frm" method="POST" enctype = "multipart/form-data"  accept-charset="UTF-8">
          
          <div id = "title"><h1><input type="text" style = "border : none;"name = "note_title" id = "note_title" value = "제목을 입력하세요"></h1></div>
          
           <div id = "user"><input type= "hidden" name = "user_id" id = "user_id" value = "user_id 02"></div>
          <textarea class="summernote2" name = "note_content" id = "note_content"></textarea>
          <div class="form-group"><div style = "float : left; margin-left : 15mm;"><label>첨부파일</label> <input type="file" name="note_file" id = "note_file"></div>
          </div><div style = "float: right;"><button type="submit" class="btn btn-default" id = "add">작성</button></div>
          
          
          
           </form>
          </div>
          
         
        </div>
      </div>
    </div>
  
              
    <script type= text/javascript>
	let pageTitle = document.getElementById("page_title");
	let noteTitle = document.getElementById("note_title");
	let userId = document.getElementById("user_id");
	let noteContent = document.getElementById("note_content");
	let noteMain = document.getElementById("notemain");
	
	
	$(document).ready(function(){
			$.ajax({
				url : "NoteAjax.do",
				type : "post",
				data : {
					
				},
				dataType : 'JSON',
				success : function(res){
					for(let i = 0; i<res.length;i++){
						
						console.log(res[i].note_title);
						console.log(res[i].note_seq);
						console.log(res);
						
						pageTitle.innerHTML += `<div style ="overflow : auto";>
						<input type = "hidden" id = "noteseq" value = ${res[i].note_seq}>
						<div id ="result_notetitle" onclick = "selectone(${res[i].note_seq})" style = "float : left; margin-left : 15px;">${res[i].note_title}</div>
						<div style = "float: right; margin-right: 15px;">
						<button id="addnote" style ="margin-left: 15px;" onclick = "parentinsert(${res[i].note_seq})">󠀫󠀫󠀫󠀫➕</button>
						<button id="deleteBotton" style="overflow : auto;" onclick="location.href='NoteDelete.do?note_seq=${res[i].note_seq}'">🗑️</button></div>
						</div>`;
						
						
					}
					
				},
				error : function(e){
					console.log(e)
				}
				
			});
	});	
	
	

	
		
	
	
 function selectone(noteseq){
		
		$.ajax({
			url : "NoteAjaxSelectone.do",
			contentType : "application/json",
			data : {
				"note_seq" : noteseq
			},
			dataType : "JSON",
			success : function(res){
				console.log(res)
			
				
		           noteMain.innerHTML = `<form id = "updatefrm" name = "updatefrm" method="post">
		        	   <input type="hidden" id = "note_seq" name="note_seq" value="${res.note_seq}">
		          <div id = "title"><h1><input type="text"style = "border : none;" name = "note_title" id = "note_title" value = "${res.note_title}"></h1>
		           <div id = "user"><input type= "hidden" name = "user_id" id = "user_id" value = "${res.user_id}"></div>
		          <textarea class="summernote2" name = "note_content" id = "note_content">${res.note_content}</textarea>
		          <div class="form-group"><div style = "float : left; margin-left : 15mm;"><img width="40%" alt="" src="resources/notefile/${res.note_file}"><a href = "${res.note_file}">${res.note_file}</a></div>
		          </div><div style = "float: right;"><button type="submit" class="btn btn-default" id = "update">수정하기</button></div>
		          
		           </form>
		               
		                `
		        	   $('.summernote2').summernote({
		        		     dialogsInBody: true,
		        				  height: 500,                 // 에디터 높이
		        				  minHeight: null,             // 최소 높이
		        				  maxHeight: null,  // 최대 높이
		        				  lang: "ko-KR",
		        				  toolbar: [
		        					    // [groupName, [list of button]]
		        					    ['fontname', ['fontname']],
		        					    ['fontsize', ['fontsize']],
		        					    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
		        					    ['color', ['forecolor','color']],
		        					    ['table', ['table']],
		        					    ['para', ['ul', 'ol', 'paragraph']],
		        					    ['height', ['height']],
		        					    ['insert',['picture','link','video']],
		        					    ['view', ['fullscreen', 'help']]
		        					  ],
		        					fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
		        					fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
		        				
		        		         
		        			});
		        		$('.note-statusbar').hide();
		        		$('#update').on('click', function(){
		        		    $.ajax({
		        		        url: "NoteAjaxUpdate.do",
		        		        type: "POST",
		        		        data: $('#updatefrm').serialize(),
		        		        success: function(data){
		        		            console.log(data)
		        		        },
		        		        error: function(){  alert("error");  }
		        		    });
		        		});
			
			},
			error : function(e){
				console.log(e)
			},
			
		});
	}
	
    
    </script> 
      <script src="./resources/js/app.js"></script>
                <script type= text/javascript>
                $('.summernote2').summernote({
                dialogsInBody: true,
          		  height: 500,                 // 에디터 높이
          		  minHeight: null,             // 최소 높이
          		  maxHeight: null,  // 최대 높이
          		  lang: "ko-KR",
          		  toolbar: [
          			    // [groupName, [list of button]]
          			    ['fontname', ['fontname']],
          			    ['fontsize', ['fontsize']],
          			    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
          			    ['color', ['forecolor','color']],
          			    ['table', ['table']],
          			    ['para', ['ul', 'ol', 'paragraph']],
          			    ['height', ['height']],
          			    ['insert',['picture','link','video']],
          			    ['view', ['fullscreen', 'help']]
          			  ],
          			fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
          			fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
          			
                    
          	});
          $('.note-statusbar').hide();
                </script>
 <script type="text/javascript">


$('#add').on('click', function(){
let form = $('#frm')[0];
let formData = new FormData(form);
console.log(formData);
        $.ajax({
            url: "NoteAjaxInsert.do",
            type: "POST",
            data: formData,
            cache: false,
            processData: false, 
            contentType: false,
            success: function(data){
                console.log(data)
            },
            error: function(){  alert("error");  },
			
        });
    });
	

</script>
<script type="text/javascript">
function parentinsert(noteseq){
	console.log(noteseq)
	
	
 
}	


</script>	


    
    
  </body>
</html>
