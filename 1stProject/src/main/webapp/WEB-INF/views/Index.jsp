<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edution (에듀션) – 모든
	취준생을 위한 웹 스터디플래너</title>

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



    h1{
    display: block;
    font-size: 4em;
    font-weight: 700;

    line-height: 4.825rem;

    }

    #index-main-left{
        position:absolute;
        left:7%;
        top:17vh;
        
    }

    h2{
    font-size: 1.125rem;
    line-height: 1.5rem;
    color: rgba(0, 0, 0, 0.6);
    font-weight: 500;
    font-variation-settings: "wght" 529;
    letter-spacing: -0.0075em;
    
    }
    

.index-main-joinbtn{
    width: 132px;
    height: 23px;
    background-color: rgb(225, 98, 89);
    border-radius: 5px;
    padding: 0.375rem 0.875rem 0.4375rem 0.875rem;
    display: inline-flex;
    align-items: center;
    
}

.index-sub-joinbtn{
    width: 65px;
    height: 23px;
    background-color: rgb(225, 98, 89);
    border-radius: 5px;
    padding: 0.375rem 0.875rem 0.4375rem 0.875rem;
    position: absolute; 
    left:92%;
    top:1vh;
}

.index-sub-joinbtn > a {
  
  font-size: 1rem;
  font-weight: 570;
  color: #fff;
  text-decoration: none; 
  color: white;

}



.index-main-joinbtn > a {
  
    margin-left: 5px;
    font-size: 1rem;
    font-weight: 570;
    color: #fff;
    
}

.index-main-image{
    position:absolute;
    left:55%;
    top:20vh;
    margin: auto;
}

header {
    width: 100%;
    height: 50px; /* footer의 높이 */
    position: absolute; 
    align-items: center;
    top: 10px;
    left: -150px;
}

footer {
    width: 100%;
    height: 50px; /* footer의 높이 */
    position: absolute; 
    align-items: center;
    bottom: 0%;
    left: 10%;
}

.index-footer-1div{
    display: flex; 
    text-align: center;
    color:rgba(0, 0, 0, 0.6); 
    font-weight: 430; 
    font-size: 14px;
}

.index-footer-2div{
    position:relative;
    left: 60%;
}

.index-footer-naverlogo{
    position:relative;
    left: 61%;
}

.index-footer-kakaologo{
    position:relative;
    left: 62%;
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
                        <li style="float: left; margin-left: 15px; margin-right: 15px; cursor: default;"><a href="GoBoard.do" style="text-decoration: none; color:inherit;">Community</a></li>
                        <li style="float: left; margin-left: 15px; margin-right: 15px; cursor: default;"><a href="GoQnA.do?" style="text-decoration: none; color:inherit; ">Q&A</a></li>
                        <li style="float: left;">
                            <div style="position: absolute; left:88%; padding: auto;">
                                <a href="LoginPage.do" style="text-decoration: none; color:inherit">로그인</a>
                            </div>
                        </li>
                        <li>
                            <div class="index-sub-joinbtn">
                                <a href="GoJoin.do">회원가입</a>
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
        <section>
            <div>
                <div class="index-main-image">
                    <img src="img/home-page.webp" 
                    style=" border: none; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;">
                </div>
                
                <div id="index-main-left">
        
                    <div class="index-main-title">
                        <h1>계획하고, <br>
                            기록하고,<br>
                        실행하세요.</h1>       


                </div>
                        
                <div class="index-subtitle">
                    <h2>
                        
                    </h2>
                </div>
                    
                    <div class="index-main-joinbtn">
                        <a href="GoJoin.do" class="index-main-joinbtn-a" style="text-decoration: none;">Edution 회원가입</a>
                    </div>
                    
                    
                </div>
            </div>
            </section>
</main>



    <footer>
        
        <nav>
            <div class="index-footer-1div" >
                ©
				<!-- -->
				2022
				<!-- -->
				Edution Labs, Inc.               
                <div class="index-footer-2div">
                    <svg viewBox="0 0 18 18" class="shareFacebook" style="width: 18px; height: 18px; display: block; fill: currentcolor; flex-shrink: 0;">
                    <path d="M17.999 8.999c0-4.97-4.029-8.999-8.999-8.999s-8.999 4.029-8.999 8.999c0 4.492 3.291 8.215 7.593 8.89v-6.289h-2.285v-2.601h2.285v-1.983c0-2.255 1.344-3.501 3.399-3.501 0.985 0 2.015 0.176 2.015 0.176v2.215h-1.135c-1.118 0-1.467 0.694-1.467 1.405v1.688h2.496l-0.399 2.601h-2.097v6.289c4.302-0.675 7.593-4.398 7.593-8.89z"></path></svg>
                    
                </div>

                <div class="index-footer-naverlogo">
                    <img src="img/naverlogo.PNG" style="width: 18px; height: 18px;">
                </div>
                
                <div class="index-footer-kakaologo">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 208 191.94" style="width: 18px; height: 18px; display: block; fill: rgba(0,0,0,0.6); flex-shrink: 0;">
                        <g><polygon class="cls-1" points="76.01 89.49 87.99 89.49 87.99 89.49 82 72.47 76.01 89.49"/>
                        <path class="cls-1" d="M104,0C46.56,0,0,36.71,0,82c0,29.28,19.47,55,48.75,69.48-1.59,5.49-10.24,35.34-10.58,37.69,0,0-.21,1.76.93,2.43a3.14,3.14,0,0,0,2.48.15c3.28-.46,38-24.81,44-29A131.56,131.56,0,0,0,104,164c57.44,0,104-36.71,104-82S161.44,0,104,0ZM52.53,69.27c-.13,11.6.1,23.8-.09,35.22-.06,3.65-2.16,4.74-5,5.78a1.88,1.88,0,0,1-1,.07c-3.25-.64-5.84-1.8-5.92-5.84-.23-11.41.07-23.63-.09-35.23-2.75-.11-6.67.11-9.22,0-3.54-.23-6-2.48-5.85-5.83s1.94-5.76,5.91-5.82c9.38-.14,21-.14,30.38,0,4,.06,5.78,2.48,5.9,5.82s-2.3,5.6-5.83,5.83C59.2,69.38,55.29,69.16,52.53,69.27Zm50.4,40.45a9.24,9.24,0,0,1-3.82.83c-2.5,0-4.41-1-5-2.65l-3-7.78H72.85l-3,7.78c-.58,1.63-2.49,2.65-5,2.65a9.16,9.16,0,0,1-3.81-.83c-1.66-.76-3.25-2.86-1.43-8.52L74,63.42a9,9,0,0,1,8-5.92,9.07,9.07,0,0,1,8,5.93l14.34,37.76C106.17,106.86,104.58,109,102.93,109.72Zm30.32,0H114a5.64,5.64,0,0,1-5.75-5.5V63.5a6.13,6.13,0,0,1,12.25,0V98.75h12.75a5.51,5.51,0,1,1,0,11Zm47-4.52A6,6,0,0,1,169.49,108L155.42,89.37l-2.08,2.08v13.09a6,6,0,0,1-12,0v-41a6,6,0,0,1,12,0V76.4l16.74-16.74a4.64,4.64,0,0,1,3.33-1.34,6.08,6.08,0,0,1,5.9,5.58A4.7,4.7,0,0,1,178,67.55L164.3,81.22l14.77,19.57A6,6,0,0,1,180.22,105.23Z"/></g></svg>
                </div>

            </div>
        </nav>
    </footer>
    

</body>
</html>