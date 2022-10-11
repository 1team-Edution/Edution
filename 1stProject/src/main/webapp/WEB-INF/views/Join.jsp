<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="./resources/js/jquery-3.6.1.min.js"></script>


</head>

<body>
<div style="font-size: 15px; white-space: nowrap; top: 0px; width: 100%; background: rgb(255, 254, 252); display: flex; flex-direction: column; align-items: center; justify-content: center;">
<nav style="display: flex; align-items: center; justify-content: center; width: 100%; max-width: 1300px; padding-left: 20px; padding-right: 20px; transition: height 250ms ease 0s; height: 80px; position: relative; overflow: hidden; box-shadow: none;">
<div style="flex-shrink: 0;">

<a href="indexView.do" rel="noopener noreferrer" style="display: block; text-decoration: none; user-select: none; cursor: pointer; color: inherit;">
    <div style="display: flex; align-items: center;">
        <svg viewBox="0 0 120 126" class="edutionLogo" style="width: 30px; height: 30px; display: block; fill: inherit; flex-shrink: 0; backface-visibility: hidden; margin-right: 10px;"></svg>

        <img src="img/Edution2.png" style="width: 30px; height: 30px;">
        <div style="font-weight: 500; font-size: 16px;
        font-family:inter-var, -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, 'Apple Color Emoji', Arial, sans-serif, 'Segoe UI Emoji', 'Segoe UI Symbol';">Edution</div></div></a></div>
        <div style="flex: 1 1 0%; display: flex; justify-content: center;"></div></nav></div>
<!-- ������� ��ܹ� -->

  <div style="display: flex; flex-direction: column; align-items: center;">
    <div style="font-size: 50px; margin-top: 8vh; font-weight: 700; margin-bottom: 24px; text-align: center; line-height: 1.1;">ȸ������</div>
    <div class="notion-login" style="width: 100%; display: flex; flex-direction: column; align-items: center; max-width: 320px; margin-bottom: 16vh;">
      <div style="display: flex; flex-direction: column-reverse; width: 100%;"><div>
  


		
<form id = "joinform" name = "joinform" action ="Join.do" enctype = "multipart/form-data" method="post">
   <!-- ���� �Է� â -->      
    <div class="mb-3">
    <label for="formFile" class="form-label" name="#"> 
    <div style="width: 120px; height: 120px;"><div style="width: 100%; height: 100%;">
    <img src="img/home-page.webp" id="preview" style="display: block; object-fit: cover; border-radius: 100%; width: 120px; height: 120px;"></div></div>
        	
        </label>
      
        <input name= "user_photo" class="form-control" onchange="readURL(this);" type="file" multiple id="photo_upload"> 

        
        
      </div>
				
                      <!-- input �߰� �ʿ��� ��� ���⼭���� -->

                  
                      <label style="display: block; margin-bottom: 4px; font-size: 16px; color: rgba(55, 53, 47, 0.65);"><br>ID/PW</label>
                      <div style="display: flex; align-items: center; width: 100%; font-size: 15px; line-height: 26px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; margin-top: 4px; margin-bottom: 8px;">
                        <input id="user_id" name="user_id" placeholder="ID�� �Է��ϼ���." style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>                        
                       <div onclick = "idCheck()" class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; white-space: nowrap; height: 20px; border-radius: 3px; font-size: 12px; line-height: 1.2; padding-left: 5px; padding-right: 5px; color: rgba(55, 53, 47, 0.65);">���̵� �ߺ�üũ<br></div>
						<span id="id_result" style="margin-right: 12px;">����� ���̵� �Է����ּ���</span>
                       
                       <!-- ������� �����ؼ� ����ϱ�! placeholder�� ���� �Է�! -->

                        <div style="display: flex; align-items: center; width: 100%; font-size: 15px; line-height: 26px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; margin-top: 4px; margin-bottom: 8px;">
                          <input id="pw" name = "user_pw" onchange="check_pw()" placeholder="PW�� �Է��ϼ���." type="password" style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>
                          <div style="display: flex; align-items: center; width: 100%; font-size: 15px; line-height: 26px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; margin-top: 4px; margin-bottom: 8px;">
                          <input id="pw2" onchange="check_pw()" placeholder="PW�� �� �� �� �Է��ϼ���." type="password" style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>
                        	<span id="check" style="margin-right: 12px;"></span><br><br>
                          
                          <!-- <div onclick = "pwCheck()" class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; white-space: nowrap; height: 20px; border-radius: 3px; font-size: 12px; line-height: 1.2; padding-left: 5px; padding-right: 5px; color: rgba(55, 53, 47, 0.65);">��й�ȣ �ߺ�üũ<br></div> -->
						  <div style="width: 100%; height: 1px; visibility: visible; border-bottom: 1px solid rgba(55, 53, 47, 0.16);"></div>



						<!-- �̸�  -->
						
						<label style="display: block; margin-bottom: 4px; font-size: 16px; color: rgba(55, 53, 47, 0.65);"><br>�̸�/�̸���/�г���</label>
                          
                          <div style="display: flex; align-items: center; width: 100%; font-size: 15px; line-height: 26px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; margin-top: 4px; margin-bottom: 8px;">
                            <input id="name" name="user_name" placeholder="�̸��� �Է��ϼ���." style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>                        
 							 <!-- <div class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; white-space: nowrap; height: 20px; border-radius: 3px; font-size: 12px; line-height: 1.2; padding-left: 5px; padding-right: 5px; color: rgba(55, 53, 47, 0.65);">�̸��� �� �Է����ּ���<br></div> --> 
						<!-- <span id="email_result" style="margin-right: 12px;">����� �̸����� �Է����ּ���</span> -->
                          
                          
                          <!-- �̸���  -->                          
                          <div style="display: flex; align-items: center; width: 100%; font-size: 15px; line-height: 26px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; margin-top: 4px; margin-bottom: 8px;">
                            <input id="email" name="user_email" placeholder="�̸����� �Է��ϼ���." style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>                        
 							<div onclick = "emailCheck()" class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; white-space: nowrap; height: 20px; border-radius: 3px; font-size: 12px; line-height: 1.2; padding-left: 5px; padding-right: 5px; color: rgba(55, 53, 47, 0.65);">�̸��� �ߺ�üũ<br></div>
						<span id="email_result" style="margin-right: 12px;">����� �̸����� �Է����ּ���</span>
 
 
 
 					<!-- �г��� -->
                            <label style="display: block; margin-bottom: 4px; font-size: 12px; color: rgba(55, 53, 47, 0.65);"></label>
                            <div style="display: flex; align-items: center; width: 100%; font-size: 15px; line-height: 26px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; margin-top: 4px; margin-bottom: 8px;">
                              <input id="nick" name="user_nick" placeholder="�г����� �Է��ϼ���." style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>
                              <div onclick = "nickCheck()" class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; white-space: nowrap; height: 20px; border-radius: 3px; font-size: 12px; line-height: 1.2; padding-left: 5px; padding-right: 5px; color: rgba(55, 53, 47, 0.65);">�г��� �ߺ�üũ<br></div>
						<span id="nick_result" style="margin-right: 12px;">����� �г����� �Է����ּ���</span>                          

                        <input type = "button" onclick= "joinform_check();" value="�����ϱ�" class="notion-focusable" aria-disabled="false" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; justify-content: center; white-space: nowrap; height: 36px; border-radius: 4px; color: rgb(235, 87, 87); font-size: 14px; line-height: 1; padding-left: 12px; padding-right: 12px; font-weight: 500; background: rgb(253, 245, 242); box-shadow: rgba(15, 15, 15, 0.1) 0px 1px 2px, rgba(235, 87, 87, 0.3) 0px 0px 0px 1px inset; margin-top: 6px; margin-bottom: 12px; width: 100%;"></div>
                      </form>
</body>


<!-- ���� ��� -->
<script>
function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();
		reader.onload = function(e) {
			document.getElementById('preview').src = e.target.result;
		};
		reader.readAsDataURL(input.files[0]);
	} else {
		document.getElementById('preview').src = "";
	}
}
</script>



<script type="text/javascript">
     function idCheck(){
          //jQuery���� �����ڿ���
                    
          if($("#user_id").val()==""){
				alert("���̵� �Է����ּ���.");
				$("#id").focus();
				/* document.getElementById('id').focus(); */
				return false; 
			}
          
          var idStr = $("#user_id").val();
          
          $.ajax({
              url : "JoinidCheck",
              data : {id : idStr},
              success : function(data){
                   if(data == "success"){
                        $("#id_result").text("��밡���� ���̵��Դϴ�.");
                   }else if(data == "fail"){
                        $("#id_result").text("�� ���̵�� ����Ͻ� �� �����ϴ�.");
                   }
              }
          });
     }
</script>

 <script>
        function check_pw(){
 
            var pw = document.getElementById('pw').value;
            var SC = ["!","@","#","$","%"];
            var check_SC = 0;
 
            if(pw.length < 6 || pw.length>16){
                window.alert('��й�ȣ�� 6���� �̻�, 16���� ���ϸ� �̿� �����մϴ�.');
                document.getElementById('pw').value='';
                document.getElementById('pw').focus();
            }
            for(var i=0;i<SC.length;i++){
                if(pw.indexOf(SC[i]) != -1){
                    check_SC = 1;
                }
            }
            if(check_SC == 0){
                window.alert('!,@,#,$,% �� Ư�����ڰ� �� ���� �ʽ��ϴ�.')
                document.getElementById('pw').value='';
                document.getElementById('pw').focus();
            }
            if(document.getElementById('pw').value !='' && document.getElementById('pw2').value!=''){
                if(document.getElementById('pw').value==document.getElementById('pw2').value){
                    document.getElementById('check').innerHTML='��й�ȣ�� ��ġ�մϴ�.'
                    document.getElementById('check').style.color='blue';
                }
                else{
                    document.getElementById('check').innerHTML='��й�ȣ�� ��ġ���� �ʽ��ϴ�.';
                    document.getElementById('check').style.color='red';
                }
            }
        }
    </script>
    
    
    
<script type="text/javascript">
     function emailCheck(){
          //jQuery���� �����ڿ���
                    
          if($("#email").val()==""){
				alert("�̸����� �Է����ּ���.");
				$("#email").focus();
				/* document.getElementById('id').focus(); */
				return false; 
			}
          
          var emailStr = $("#email").val();
          
          $.ajax({
              url : "JoinemailCheck",
              data : {email : emailStr},
              success : function(data){
                   if(data == "success"){
                        $("#email_result").text("��밡���� �̸����Դϴ�.");
                        
                   }else if(data == "fail"){
                        $("#email_result").text("�� �̸����� ����Ͻ� �� �����ϴ�.");
                        
                   }
              }
          });
     }
</script>



<script type="text/javascript">
     function nickCheck(){
          //jQuery���� �����ڿ���
                    
          if($("#nick").val()==""){
				alert("�г����� �Է����ּ���.");
				$("#nick").focus();
				/* document.getElementById('id').focus(); */
				return false; 
			}
          
          var nickStr = $("#nick").val();
          
          $.ajax({
              url : "JoinnickCheck",
              data : {nick : nickStr},
              success : function(data){
                   if(data == "success"){
                        $("#nick_result").text("��밡���� �г����Դϴ�.");
                        
                   }else if(data == "fail"){
                        $("#nick_result").text("�� �г����� ����Ͻ� �� �����ϴ�.");
                        
                   }
              }
          });
     }
</script>


<script>
	function joinform_check(){

		 var id = document.getElementById("user_id");
	     var pw = document.getElementById("pw");
	     var pw2 = document.getElementById("pw2");
	     var name = document.getElementById("name");  
	     var email = document.getElementById("email");
	     var nick = document.getElementById("nick");
	     
	     if(id.value == ""){
	          alert("���̵� �Է����ּ���.")
	          id.focus();
	          return false;
	       }
	       if(pw.value == ""){
	          alert("��й�ȣ�� ����� �Է� ���ּ���.")
	          pw.focus();
	          return false;
	       }
	       if(name.value == ""){
	          alert("��й�ȣ�� ����� �Է� ���ּ���.")
	          name.focus();
	          return false;
	       }
	       if(email.value == ""){
	          alert("�̸����� �Է����ּ���.");
	          email.focus();
	          return false;
	       }
	       if(nick.value == ""){
	          alert("�г����� �Է����ּ���.")
	          return false;
	       }
	     
	       document.joinform.submit();
	    
	
	}
	     
	    

	</script>



<!-- <script type="text/javascript">
     function pwCheck(){
          //jQuery���� �����ڿ���
                    
          if($("#user_pw").val()==""){
				alert("���̵� �Է����ּ���.");
				$("#pw").focus();
				return false;
			}else if(){
				
				
			}
          
          var idStr = $("#user_pw").val();
          
          $.ajax({
              url : "JoinpwCheck",
              data : {pw : pwStr},
              success : function(data){
                   if(data == "success"){
                        $("#pw_result").text("��밡���� ���̵��Դϴ�.");
                   }else if(data == "fail"){
                        $("#pw_result").text("�� ���̵�� ����Ͻ� �� �����ϴ�.");
                   }
              }
          });
     }
</script> -->

</html>