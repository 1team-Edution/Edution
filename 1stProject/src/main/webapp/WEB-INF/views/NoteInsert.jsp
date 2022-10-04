<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
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
  .ck-editor__editable { height: 400px; }
  .ck-content { font-size: 12px; }
#title{
	position : sticky;
}
	#deleteBotton{
	align="right"
}
#user{
position : sticky;
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
                <div id="name">New Page</div>
              </div>
              
            </div>
          </div>
          
          <div id="btn"></div>
          
          <div id="cover"></div>
          
          
          <div>
           <form action = "NoteInsert.do" method="post">
          
          <div id = "title"><h1><input type="text" name = "note_title"></h1></div>
          
           <div id = "user"><input type= "text" name = "user_id" value = "user_id 02"></div>
          <textarea class="summernote2" name = "note_content"></textarea>
          <div style = "float: right;"><button type="submit" class="btn btn-default">작성</button></div>
          
           </form>
          </div>
          
         
        </div>
      </div>
    </div>
    <script src="./resources/js/app.js"></script>
                <script>
                $('.summernote2').summernote({
                dialogsInBody: true,
          		  height: 300,                 // 에디터 높이
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
              
    <script>
	let pageTitle = document.getElementById("page_title");
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
						
						pageTitle.innerHTML += `<div style ="overflow : auto";><button id="settingsicon" style ="margin-left: 15px;">󠀫󠀫󠀫󠀫➕</button>
						<a href="NoteSelectOne.do?note_seq=${res[i].note_seq}">${res[i].note_title}</a><div style = "float: right; margin-right: 15px;">
						<button id="deleteBotton" style="overflow : auto;" onclick="location.href='NoteDelete.do?note_seq=${res[i].note_seq}'">🗑️</button></div></div>`;
					  
					  }
				},
				error : function(e){
					console.log(e)
				}
				
			});
	});	
    
    </script>
    
    
  </body>
</html>
