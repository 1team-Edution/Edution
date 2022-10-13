<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script
	src="https://cdn.jsdelivr.net/npm/chart.js@3.5.1/dist/chart.min.js"></script>

<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/style.css">

</head>
<body>
	<div
		style="background-color: #1D1919; display: flex; justify-content: space-between; align-items: center; overflow: hidden; height: 45px; padding-left: 12px; padding-right: 10px;">
		<div
			style="display: flex; align-items: center; line-height: 1.2; font-size: 14px; height: 100%; flex-grow: 0; margin-right: 8px; min-width: 0px;">
			<div role="button" tabindex="0"
				style="user-select: none; cursor: pointer; display: inline-flex; align-items: center; flex-shrink: 1; white-space: nowrap; height: 24px; border-radius: 3px; font-size: 14px; line-height: 1.2; min-width: 0px; padding-left: 6px; padding-right: 6px; color: rgb(55, 53, 47);">
				<div
					style="display: flex; align-items: center; justify-content: center; height: 20px; width: 20px; border-radius: 0.25em; flex-shrink: 0; margin-right: 6px;">

					<div>
						<div style="width: 100%; height: 100%;">
							<img src="img/Edution2.png" referrerpolicy="same-origin"
								style="display: block; object-fit: cover; border-radius: 3px; width: 20px; height: 20px; transition: opacity 100ms ease-out 0s;">
						</div>
					</div>
				</div>
				<div class="notranslate"
					style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 240px; color: white;">Edution
					Admin</div>
			</div>
		</div>
		<a href="indexView.do"
			style="color: white; user-select: none; cursor: pointer; display: inline-flex; align-items: center; flex-shrink: 0; white-space: nowrap; height: 28px; border-radius: 3px; font-size: 14px; line-height: 1.2; min-width: 0px; padding-left: 8px; padding-right: 8px;">

			<img src="img/Edution2.png"
			style="width: 20px; height: 20px; margin-right: 10px; border-radius: 3px;">
			Logout
		</a>

	</div>
	<!-- 여기까지 상단바 부분 -->


	<div class="wrapper d-flex align-items-stretch">
		<nav id="sidebar">

			<div class="p-4 pt-5">
				<!-- 관리자 아이디의 프로필 사진이 보여지게 해주세요 -->
				<a href="#" class="img logo rounded-circle mb-5"
					style="background-image: url(img/Edution2.png);"></a>
				<p style="color: #f8b739; margin-left: 70px;">Edution Admin</p>
				<ul class="list-unstyled components mb-5">
					<li><a href="#" data-toggle="collapse" aria-expanded="false"
						id="lihome" onclick="closeText(lihome);">Dashboard</a></li>
					<li><a id="liuser" href="#" onclick="closeText(liuser);">Users</a>
					</li>
					<li><a href="#pageSubmenu" data-toggle="collapse"
						aria-expanded="false" class="dropdown-toggle" id="licommunity"
						onclick="closeText(licommunity);">Board Tap</a>
						<ul class="collapse list-unstyled" id="pageSubmenu">
							<li><a href="#" id="licommunity1"
								onclick="location.href='GoQnA.do'">Q&A</a></li>
							<li><a href="#" id="licommunity2"
								onclick="location.href='GoBoard.do'">Community</a></li>
							<!-- <li>
                <a href="#">Page 3</a>
            </li> -->
						</ul></li>
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
						<i class="fa fa-bars"></i> <span class="sr-only">Toggle
							Menu</span>
					</button>
					<button class="btn btn-dark d-inline-block d-lg-none ml-auto"
						type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<i class="fa fa-bars"></i>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="nav navbar-nav ml-auto">
							<li class="nav-item active"><a class="nav-link" href="#"
								onclick="closeText(lihome)">Dashboard</a></li>
							<li class="nav-item"><a class="nav-link" href="#"
								onclick="closeText(liuser)">Users</a></li>
							<li class="nav-item"><a class="nav-link" href="#"
								onclick="location.href='GoQnA.do'">Q&A</a></li>
							<li class="nav-item"><a class="nav-link" href="#"
								onclick="location.href='GoBoard.do'">Community</a></li>
							<!-- <li class="nav-item">
                <a class="nav-link" href="#">Contact</a>
            </li> -->
						</ul>
					</div>
				</div>
			</nav>

			<div id="test1" style="display: none;" class="adminTest">
				<h2 class="mb-4">#01</h2>
				<div>
					<canvas id="myChart"  style=" height:500px; width:70vw"></canvas>
				</div>
			</div>


			<div id=test2 style="display: none;" class="adminTest">
				<h2 class="mb-4">#02</h2>
				<div class="container">
					<h2>고객문의사항</h2>
					<p>날짜순으로 순차적으로 답변해주시길 바랍니다.</p>
					<form action="AnswerInsert.do">	
					<table class="table table-striped">
						<thead>
							<tr>
								<th>고객 아이디</th>
								<th>문의명</th>
								<th>문의일자</th>
							</tr>
						</thead>
						
						<tbody id="QnA">

						</tbody>
					</form>	
					</table>
				</div>
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


	<script src="resources/js/jquery.min.js"></script>
	<script>
		var test1 = document.getElementById("test1")
		var test2 = document.getElementById("test2")
		var test3 = document.getElementById("test3")
		var test4 = document.getElementById("test4")
		var test5 = document.getElementById("test5")
		var test6 = document.getElementById("test6")
		var lihome = document.getElementById("lihome")
		var liuser = document.getElementById("liuser")
		var licommunity = document.getElementById("licommunity")
		var licommunity1 = document.getElementById("licommunity1")
		var licommunity2 = document.getElementById("licommunity2")
		
		
		var navlink = document.querySelector(".nav-link-home")

		function closeText(data) {

			if (data == lihome) {
				$(".adminTest").css('display', 'none');
				test1.style = "display:block;"

			} else if (data == liuser) {
				$(".adminTest").css('display', 'none');
				test2.style = "display:block;"

			} else if (data == licommunity) {
				
			} else if (data == licommunity1) {
				$(".adminTest").css('display', 'none');
				test4.style = "display:block;"

			} else if (data == licommunity2) {
				$(".adminTest").css('display', 'none');
				test5.style = "display:block;"

			}

			
		}
		
		let chartArea = document.getElementById('myChart').getContext('2d');
		let todo_yn = [];
		let user_id = [];
		let row = 2;
		let column = 2;

		let arr = [];
		let arr8 = [];
		
		let n = 0;
		let avg_yn8 = [];
		console.log(chartArea);
		$(document).ready(function() {
			$.ajax({
				url : "TodoAjax.do",
				type : "post",
				data : {
					
				},
				dataType : "JSON",
				success : function(res) {
				
					/* console.log(res); */
					// 빈 배열 생성하기
					for (let i = 0; i < res.length; i++) {
						arr8[i] = new Array(2);
					}
										
					// userid와 todo_yn을 2차원 배열에 담아주기
					for (let j = 0; j < res.length; j++) {
						for (let i = 0; i < 2; i++) {
							if (i === 0) {
								arr8[j][i] = res[j].user_id;

							} else if (i == 1) {
								arr8[j][i] = res[j].todo_yn;
							}
						}
					}
					console.log(arr8);
					// id별 완료여부를 배열에 담아주기 
					for (let i = 0; i < arr8.length; i++) {
						if (1 === parseInt(arr8[i][0])) { // 8자리에 세션으로 id값이 들어오면 사용자의 완수율 통계 집계 가능
							arr[n] = arr8[i][1];
							n++;
						}
					}
					
					console.log(arr);
		
					
					// 모든 사용자 평균 완수율 구하기
					
					
					
					////////////////////////////////////
					
					// 완수율 구하기
					
					// id 8
					let result8 = arr.reduce(function add(sum, currValue) {
						return sum + currValue;
					}, 0);
					
					let avg8 =  result8 / arr.length;
					
					console.log('퍼센트 : '+(avg8 * 100).toFixed(1)); 
					
					avg_yn8.push(parseInt((avg8 * 100).toFixed(1)));
					console.log(avg_yn8);
					
					
					////////////////////////chart.js///////////////////////////////////
					
					let a = avg_yn8[0];
					console.log(typeof avg_yn8[0]);
					let data = [a,19.6,25.5,20.4,23.4,26.8,25.0,40.0,50.0,40.0,34.0,38.0];
					
					
					
					let myChart = new Chart(chartArea, {
		                type: 'bar', // 차트의 형태
		                data: { // 차트에 들어갈 데이터
		                    labels: [
		                        //x 축
		                        '1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'
		                    ],
		                    datasets: [
		                        { //데이터
		                            label: '사용자 월별 todolist 완수율', //차트 제목
		                            data: data,//x축 label에 대응되는 데이터 값
		                            
		                            backgroundColor: [
		                                //색상
		                                'rgba(255, 99, 132, 0.2)',
		                                'rgba(54, 162, 235, 0.2)',
		                                'rgba(255, 206, 86, 0.2)',
		                                'rgba(75, 192, 192, 0.2)',
		                                'rgba(153, 102, 255, 0.2)',
		                                'rgba(255, 159, 64, 0.2)'
		                            ],
		                            borderColor: [
		                                //경계선 색상
		                                'rgba(255, 99, 132, 1)',
		                                'rgba(54, 162, 235, 1)',
		                                'rgba(255, 206, 86, 1)',
		                                'rgba(75, 192, 192, 1)',
		                                'rgba(153, 102, 255, 1)',
		                                'rgba(255, 159, 64, 1)'
		                            ],
		                            borderWidth: 1 //경계선 굵기
		                        }
		                    ]
		                },
		                options: {
		                	responsive : false,
		                    scales: {
		                        yAxes: [
		                            {
		                                ticks: {
		                                    beginAtZero: true
		                                }
		                            }
		                        ]
		                    },
		                    animations: {
		                        y: {
		                            easing: 'easeInOutElastic',
		                            from: (ctx) => {
		                                if(ctx.type === 'data') {
		                                    if(ctx.mode === 'default' && !ctx.dripped) {
		                                        ctx.dropped = true;
		                                        return 0;
		                                    }
		                                }
		                            }
		                        }
		                    }
		                }
		            });
				////////////// chart.js 끝나는 지점 /////////////////////////////////	
				}, 
				
				error : function(e) {
					console.log(e);
				}

			});

		});
		
		////////////////// QnA관리 기능 //////////////////////////////////
		let date = [];
		let qna = document.getElementById("QnA");
		let addhtml = '';
		let answerArea = '';
		
		
		function answer(idx) { // 클릭시 textarea가 생겨서 답변을 해줄 수 있는 함수
			answerArea = document.getElementById(`answer${idx}`);
			answerArea.innerHTML = `<td id='answerclass' class='form-group'><label for='comment'>Comment:</label><textarea class='form-control' rows='5'id='comment'colspan='3'></textarea><div role='button' onclick='deleteQnA(${idx})'><input id='answer_btn' type='submit' class='btn btn-primary' value='답변하기'></div></td>`;
			console.log('answer함수실행');
			
		}
		
		/* function close() {
			$('.answerclass').css('display','none');
		} */
		
		$('#liuser').on('click', function(){
			
		
			$.ajax({
				url : "QnASelectAll.do",
				type : "post",
				data : {
					
				},
				dataType : "JSON",
				success : function(data) {
					
					
					console.log(data);

					for (var i = 0; i < data.length; i++) {
						
						date.push(data[i].help_date.split(' '))
						
						addhtml += `
							<tr id="content${i}">
								<td>${data[i].user_id}</td>
								<td><a id="title${i}" class="help_title" role="button" onclick="answer(${i})">${data[i].help_title}</a></td>
								<td>${date[i][0]}</td>
							</tr>
							<div id="answer${i}">
							
							</div>
						`;
					}
					qna.innerHTML = addhtml;
					addhtml = '';
					
					
					
					

					
					
					
				},
				error : function(e) {
					console.log(e);
				}
			});
		});
		
		

		
		
	</script>



	<script src="resources/js/popper.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/main_qna_mypage.js"></script>

</body>
</html>