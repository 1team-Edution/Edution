<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

</head>
<body>
	<form id="frm" method="post">
		<input type="text" name="user_id"> <input type="button"
			id="abc">

	</form>

	<script type="text/javascript">
		let todo_yn = [];
		let user_id = [];
		let row = 2;
		let column = 2;

		let arr = new Array(row);
		let arr2 = [];
		let n = 0;
		$('#abc').on('click', function() {
			$.ajax({
				url : "TodoAjax.do",
				type : "post",
				data : $('#frm').serialize(),

				dataType : "JSON",
				success : function(res) {
					// 데이터 로드 성공시 배열에 for문을 통해 배열에 담아주기
					/* for(let i=0; i<res.length; i++){
						
						todo_yn.push(res[i].todo_yn);
						user_id.push(res[i].user_id);
						
					} */

					// 빈 배열 생성하기
					for (var i = 0; i < res.length; i++) {
						arr[i] = new Array(2);
					}
					
					
					// userid와 todo_yn을 2차원 배열에 담아주기
					for (var j = 0; j < res.length; j++) {
						for (var i = 0; i < 2; i++) {
							if (i === 0) {
								arr[j][i] = res[j].user_id;

							} else if (i == 1) {
								arr[j][i] = res[j].todo_yn;
							}
						}
					}
					
					
					// id별 완료여부를 배열에 담아주기 
					for (var i = 0; i < arr.length; i++) {
						if (8 === parseInt(arr[i][0])) {
							arr2[n] = arr[i][1];
							n++;
						}
					}
					console.log(arr2);
					console.log(arr);
					
					// 완수율 구하기
					let result = arr2.reduce(function add(sum, currValue) {
						return sum + currValue;
					}, 0);
					
					let avg =  result / arr2.length;
					
					console.log(Math.round(avg * 100));
					
					
					
				},
				error : function(e) {
					console.log(e);
				}

			});

		});
	</script>

</body>
</html>