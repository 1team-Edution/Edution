<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edution(에듀션) - Community</title>

<style>

html{
        font-family: sans-serif;
        padding: 60px;
        min-width: 1020px;
    }

    body{
    
    font-family: inter-var, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol";
    font-size: 17px;
    line-height: 1.5;
    overflow: hidden;

    }

    main{
        width: 100%;
        height: 100%;
        margin-top: 0;
        margin-bottom: 0;
        margin-left: auto;
        margin-right: auto;
        padding-right: 24px;
        padding-left: 24px;
        position:relative;

    }


header {
    width: 100%;
    height: 50px; /* footer의 높이 */
    position: absolute; 
    align-items: center;
    top: 10px;
    left: -150px;
}


.index-sub-joinbtn{
    width: 65px;
    height: 23px;
    background-color: rgb(225, 98, 89);
    border-radius: 5px;
    padding: 0.375rem 0.875rem 0.4375rem 0.875rem;
    position: absolute; 
    left:1775px;
    top:10px;
}

.index-sub-joinbtn > a {
  
  font-size: 1rem;
  font-weight: 570;
  color: #fff;
  text-decoration: none; 
  color: white;

}

.qna-main-left{
        position:absolute;
        left:260px;
        top:150px;
        
    }



h1{
    display: block;
    font-weight: 700;
    font-size: 2.3125rem;
    line-height: 3.625rem;

    }

h2{
    font-size: 1.125rem;
    line-height: 1.5rem;
    color: rgba(0, 0, 0, 0.6);
    font-weight: 500;
    font-variation-settings: "wght" 529;
    letter-spacing: -0.0075em;
    padding-left: 50px;    
    padding-top: 15px;
}

.qna-main-lefth3{
    position:absolute;
        left:220px;
        top:540px;
    margin-top: 10px;
}

.qna-main-right{
    position:absolute;
        left:950px;
        top:250px;
}

.qna-form-userid{
    height: 27px;
    width: 179px;
    color: rgba(0, 0, 0, 0.6);
    border-radius: 0.25rem;
    border: 4px solid rgb(225, 98, 89,0.3);


}

/* input:focus, textarea:focus{
    border: 5px solid rgb(225, 98, 89,0.3);
    border-radius: 0.25rem;

} */


.qna-form-title{
    height: 27px;
    width: 440px;
    color: rgba(0, 0, 0, 0.6);
    font-size: 15px;

    outline: none;
    border-radius: 0.25rem;
    border: 4px solid rgb(225, 98, 89,0.3);
}

.qna-form-content{
    height: 300px;
    width: 440px; 
        color: rgba(0, 0, 0, 0.6);
    font-size: 15px;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;

    outline: none;
    border-radius: 0.25rem;
    border: 4px solid rgb(225, 98, 89,0.3);
}

.qna-form-content::placeholder{
    padding-top: 2px;
    padding-left: 3px;
 
}

input::placeholder{
    font-size: 15px;
}

.qna-main-sendmessage{
    position:absolute;
        left:950px;
        top:50px;
}

   .qna-main-submit{
    width: 150px;
    height: 30px;
    background-color: rgb(225, 98, 89);
    padding-top: 4px;
    border: none;
    border-radius: 5px;
    font-size:1rem;
    position:absolute;
    left:300px;
            
        
        }
        


</style>


</head>
<body>
    <header>
        <div style="font-size: 15px; white-space: nowrap; top: 0px; width: 100%; display: flex; flex-direction: column; align-items: center;">
            <nav style="display: flex; align-items: center; width: 100%; max-width: 1300px;  height: px; overflow: hidden;">
            <div style="flex-shrink: 0;">
                <div style="display: flex; align-items: center">                   
                    <img src="img/Edution2.png" style="width: 30px; height: 30px; padding-top: 15px;">
                    <div role="button" style="font-weight: 500; font-size: 17px; cursor: default; padding-top: 15px;
                    font-family:inter-var, -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, 'Apple Color Emoji', Arial, sans-serif, 'Segoe UI Emoji', 'Segoe UI Symbol';">Edution
                    </div>
                <div >
                    <ul style="list-style: none;">
                        <li style="float: left; margin-left: 15px; margin-right: 15px; font-weight: 500; cursor: default;"><a href="" style="text-decoration: none; color:inherit;">Home</a></li>
                        <li style="float: left; margin-left: 15px; margin-right: 15px; cursor: default;"><a href="" style="text-decoration: none; color:inherit;">Community</a></li>
                        <li style="float: left; margin-left: 15px; margin-right: 15px; cursor: default;"><a href="#" style="text-decoration: none; color:inherit; ">Q&A</a></li>
                        <li style="float: left;">
                            <div style="position: absolute; left:1700px; padding: auto;">
                                <a href="#" style="text-decoration: none; color:inherit">로그인</a>
                            </div>
                        </li>
                        <li>
                            <div class="index-sub-joinbtn">
                                <a href="#">회원가입</a>
                            </div>
                                  
                        </li>
                    </ul>
                </div>
                </div>
            </div>
            </nav>
        </div>
        
    </header>

<main>

    
    

    <div class="qna-main-left">



            <img src="img/woman-answering-phone.avif" style="padding-left: 50px;">
            <h1>Edution에
                 질문이 있으신가요?</h1>
                 
                 <h2>
                     Edution을 어떻게 활용할지 함께 고민해드립니다.
                    </h2>
                </div>

            <div class="qna-main-lefth3">
                <h3>
                    지식 공유, 스케줄 관리, 노트를 하나로 진행할 수 있는 유연한 도구
                </h3>
            </div>
                    
            
            <div class="qna-main-sendmessage"><h1>Edution에게<img src="img/qnasendimage.png" style="margin-left:15px; width: 140px;"><br>
                                                  Message를 보내주세요!</h1></div>
<<<<<<< HEAD
    <div class="qna-main-right">
                
    <input type="text" class="qna-form-userid" placeholder="Your ID">
    
    <div style="padding: 5px;"></div>
    <input type="text" class="qna-form-title" placeholder="Write title of your message">

    <div style="padding-top: 10px;"></div>
    <textarea class="qna-form-content" placeholder="Write your message"></textarea>
    
    <div style="padding-top: 10px;"></div>
      <input type="submit" class="qna-main-submit" value="Send Message" style="color: white;">
</div>
=======
      <form action="QnAInsert.do">                                            
	    <div class="qna-main-right">
	   	 <input type="text" name="user_id" class="qna-form-userid" placeholder="Your ID">
	    
	    <div style="padding: 5px;"></div>
	   	 <input type="text" name="help_title" class="qna-form-title" placeholder="Write title of your message">
	
	    <div style="padding-top: 10px;"></div>
	   	 <textarea class="qna-form-content" name="help_content" placeholder="Write your message"></textarea>
	    
	    <div style="padding-top: 10px;"></div>
	     <input type="submit" class="qna-main-submit" value="Send Message" style="color: white;">
		</div>
	  </form>  
>>>>>>> branch 'master' of https://github.com/1team-Edution/Edution.git



</main>



</body>
</html>