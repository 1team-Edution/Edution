<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

  
      <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
          
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
          <link rel="stylesheet" href="resources/css/style.css">

</head>
<body>
    <div style="background-color: #1D1919; display: flex; justify-content: space-between; align-items: center; overflow: hidden; height: 45px; padding-left: 12px; padding-right: 10px;">
        <div style="display: flex; align-items: center; line-height: 1.2; font-size: 14px; height: 100%; flex-grow: 0; margin-right: 8px; min-width: 0px;">
        <div  role="button" tabindex="0" style="user-select: none;  cursor: pointer; display: inline-flex; align-items: center; flex-shrink: 1; white-space: nowrap; height: 24px; border-radius: 3px; font-size: 14px; line-height: 1.2; min-width: 0px; padding-left: 6px; padding-right: 6px; color: rgb(55, 53, 47);">
    <div style="display: flex; align-items: center; justify-content: center; height: 20px; width: 20px; border-radius: 0.25em; flex-shrink: 0; margin-right: 6px;">
        
        <div>
        <div style="width: 100%; height: 100%;">
    <img src="img/Edution2.png" referrerpolicy="same-origin" style="display: block; object-fit: cover; border-radius: 3px; width: 20px; height: 20px; transition: opacity 100ms ease-out 0s;"></div></div></div>
    <div class="notranslate" style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 240px; color: white;">Edution Admin</div></div></div>
    <a href="#" style="color:white; user-select: none; cursor: pointer; display: inline-flex; align-items: center; flex-shrink: 0; white-space: nowrap; height: 28px; border-radius: 3px; font-size: 14px; line-height: 1.2; min-width: 0px; padding-left: 8px; padding-right: 8px;">
    
        <img src="img/Edution2.png"  style="width: 20px; height: 20px; margin-right: 10px; border-radius: 3px; ">
        Edution으로 돌아가기</a>

</div>
<!-- 여기까지 상단바 부분 -->


    <div class="wrapper d-flex align-items-stretch">
        <nav id="sidebar">

            <div class="p-4 pt-5">
                <!-- 관리자 아이디의 프로필 사진이 보여지게 해주세요 -->
              <a href="#" class="img logo rounded-circle mb-5" style="background-image: url(img/Edution2.png);"></a>
              <p style="color: #f8b739; margin-left: 70px;">Edution Admin</p>
        <ul class="list-unstyled components mb-5">
          <li>
            <a href="#" data-toggle="collapse" aria-expanded="false" id="lihome" onclick="closeText(lihome);">Dashboard</a>
          </li>
          <li>
              <a href="#" id="liuser" onclick="closeText(liuser);">Users</a>
          </li>
          <li>
          <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"id="licommunity" onclick="closeText(licommunity);">Board Tap</a>
          <ul class="collapse list-unstyled" id="pageSubmenu">
            <li>
                <a href="#" id="licommunity1" onclick="closeText(licommunity1);">Q&A</a>
            </li>
            <li>
                <a href="#" id="licommunity2" onclick="closeText(licommunity2);">Community</a>
            </li>
            <!-- <li>
                <a href="#">Page 3</a>
            </li> -->
          </ul>
          </li>
          <!-- <li>
          <a href="#" id="litotal" onclick="closeText(litotal);">Statistics</a>
          </li> -->
          <!-- <li>
          <a href="#">Contact</a>
          </li> -->
        </ul>


      </div>
    </nav>

  
		

    <!-- Page Content  -->
  <div id="content" class="p-4 p-md-5">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">

        <button type="button" id="sidebarCollapse" class="btn btn-primary">
          <i class="fa fa-bars"></i>
          <span class="sr-only">Toggle Menu</span>
        </button>
        <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fa fa-bars"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="nav navbar-nav ml-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#" onclick="closeText(lihome)">Dashboard</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#" onclick="closeText(liuser)" >Users</a>
            </li>
            <li class="nav-item" >
                <a class="nav-link" href="#" onclick="closeText(licommunity1)">Q&A</a>
            </li>
            <li class="nav-item" >
                <a class="nav-link" href="#" onclick="closeText(licommunity2)">Community</a>
            </li>
            <!-- <li class="nav-item">
                <a class="nav-link" href="#">Contact</a>
            </li> -->
          </ul>
        </div>
      </div>
    </nav>
    
    <div id="test1" style="display: none;" class="adminTest">
        <h2 class="mb-4">#01</h2>
        <p>Edution 관리자 페이지입니다. 이곳에 필요한 내용을 넣어주세요.</p>
        </div>


    <div id="test2" style="display: none; " class="adminTest">
    <h2 class="mb-4">#02</h2>
    <p>Edution 관리자 페이지입니다. 이곳에 필요한 내용을 넣어주세요.</p>
    </div>

    <div id="test3" style="display: none;" class="adminTest">
    <h2 class="mb-4">#03</h2>
    <p>Edution 관리자 페이지입니다. 이곳에 필요한 내용을 넣어주세요.</p>
    </div>

    <div id="test4" style="display: none;" class="adminTest">
        <h2 class="mb-4">#04</h2>
        <p>Edution 관리자 페이지입니다. 이곳에 필요한 내용을 넣어주세요.</p>
        </div>

        <div id="test5" style="display: none;" class="adminTest">
            <h2 class="mb-4">#05</h2>
            <p>Edution 관리자 페이지입니다. 이곳에 필요한 내용을 넣어주세요.</p>
            </div>

    <div id="test6" style="display: none;" class="adminTest">
        <h2 class="mb-4">#06</h2>
        <p>Edution 관리자 페이지입니다. 이곳에 필요한 내용을 넣어주세요.</p>
        </div>
        
    
</div>
</div>


    <script src="resources/js/jquery-3.6.1.min.js"></script> 
    <script>

       

        var test1=document.getElementById("test1")
        var test2=document.getElementById("test2")
        var test3=document.getElementById("test3")
        var test4=document.getElementById("test4")
        var test5=document.getElementById("test5")
        var test6=document.getElementById("test6")
        var lihome=document.getElementById("lihome")
        var liuser=document.getElementById("liuser")
        var licommunity=document.getElementById("licommunity")
        var licommunity1=document.getElementById("licommunity1")
        var licommunity2=document.getElementById("licommunity2")

        var navlink=document.querySelector(".nav-link-home")
        


        function closeText(data){
            
            if(data == lihome){
                $(".adminTest").css('display','none');
                    test1.style="display:block;"     
                                 
                }
                else if(data == liuser){
                    $(".adminTest").css('display','none');
                    test2.style="display:block;"
                    
                }else if(data == licommunity){
                    
                }else if(data == licommunity1){
                    $(".adminTest").css('display','none');
                    test4.style="display:block;"
                      
                }else if(data == licommunity2){
                    $(".adminTest").css('display','none');
                    test5.style="display:block;"
                       
                }
                

        }


        </script>



<script src="resources/js/popper.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/main.js"></script>

</body>
</html>