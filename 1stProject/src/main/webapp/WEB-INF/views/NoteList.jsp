<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Notion~nickb94</title>
    <link rel="stylesheet" href="../resources/css/app.css" />
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/35.1.0/classic/ckeditor.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/translations/ko.js"></script> 
  <style>
  .ck-editor__editable { height: 400px; }
  .ck-content { font-size: 12px; }
  #title{
	position : sticky;
}
	#deleteBotton{
	align="right"
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
                <div id="name">사용자 이름</div>
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
                  <div id="addapage">
                  
                    <button id="settingsicon">󠀫󠀫󠀫󠀫➕</button>
                    <div id="settings">Add a Page</div>
                    <button id="deleteBotton" align= "right">🗑️</button>
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
                <!-- <div id="margindivinscroller"></div> -->
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
          <form action = "Insert.do" method="post">
          <div id = "title"><h1><input type="text" name = "note_title"></h1></div>
          
          
          <textarea id="editor" name = "note_content">
          This is some sample content.</textarea>
          <div style = "float: right;"><button type="submit" class="btn btn-default">작성</button></div>
          
           </form>
          </div>
          
         
        </div>
      </div>
    </div>
    
                <script>
                        ClassicEditor
                                .create( document.querySelector( '#editor' ) )
                                .then( editor => {
                                        console.log( editor );
                                        language: "ko";
                                } )
                                .catch( error => {
                                        console.error( error );
                                } );
                </script>
    
    <script src="../resources/js/app.js"></script>
    
  </body>
</html>
