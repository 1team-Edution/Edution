<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.5.1/dist/chart.min.js"></script>

</head>
<body>
	<form id="frm" method="post">
		<input type="text" name="user_id"> <input type="button"	id="abc">

	</form>
	
 	<div>
 		<canvas id="myChart" width="100" height="100"></canvas>
 	</div>

	<script type="text/javascript">
	
		let chartArea = document.getElementById('myChart').getContext('2d');
		let todo_yn = [];
		let user_id = [];
		let row = 2;
		let column = 2;

		let arr = [];
		let arr8 = [];
		
		let n = 0;
		let avg_yn8 = [];
		
		$('#abc').on('click', function() {
			$.ajax({
				url : "TodoAjax.do",
				type : "post",
				data : $('#frm').serialize(),

				dataType : "JSON",
				success : function(res) {

					// �� �迭 �����ϱ�
					for (let i = 0; i < res.length; i++) {
						arr8[i] = new Array(2);
					}
										
					// userid�� todo_yn�� 2���� �迭�� ����ֱ�
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
					// id�� �ϷῩ�θ� �迭�� ����ֱ� 
					for (let i = 0; i < arr8.length; i++) {
						if (8 === parseInt(arr8[i][0])) { // 8�ڸ��� �������� id���� ������ ������� �ϼ��� ��� ���� ����
							arr[n] = arr8[i][1];
							n++;
						}
					}
					
					console.log(arr);
		
					
					// ��� ����� ��� �ϼ��� ���ϱ�
					
					
					
					////////////////////////////////////
					
					// �ϼ��� ���ϱ�
					
					// id 8
					let result8 = arr.reduce(function add(sum, currValue) {
						return sum + currValue;
					}, 0);
					
					let avg8 =  result8 / arr.length;
					
					console.log('�ۼ�Ʈ : '+(avg8 * 100).toFixed(1)); 
					
					avg_yn8.push(parseInt((avg8 * 100).toFixed(1)));
					console.log(avg_yn8);
					
					
					////////////////////////chart.js///////////////////////////////////
					
					let a = avg_yn8[0];
					console.log(typeof avg_yn8[0]);
					let data = [a,19.6,25.5,20.4,23.4,26.8,25.0];
					
					
					
					let myChart = new Chart(chartArea, {
		                type: 'bar', // ��Ʈ�� ����
		                data: { // ��Ʈ�� �� ������
		                    labels: [
		                        //x ��
		                        '1��','2��','3��','4��','5��','6��','7��','8��','9��','10��','11��','12��'
		                    ],
		                    datasets: [
		                        { //������
		                            label: '���� todolist �ϼ���', //��Ʈ ����
		                            data: data,//x�� label�� �����Ǵ� ������ ��
		                            
		                            backgroundColor: [
		                                //����
		                                'rgba(255, 99, 132, 0.2)',
		                                'rgba(54, 162, 235, 0.2)',
		                                'rgba(255, 206, 86, 0.2)',
		                                'rgba(75, 192, 192, 0.2)',
		                                'rgba(153, 102, 255, 0.2)',
		                                'rgba(255, 159, 64, 0.2)'
		                            ],
		                            borderColor: [
		                                //��輱 ����
		                                'rgba(255, 99, 132, 1)',
		                                'rgba(54, 162, 235, 1)',
		                                'rgba(255, 206, 86, 1)',
		                                'rgba(75, 192, 192, 1)',
		                                'rgba(153, 102, 255, 1)',
		                                'rgba(255, 159, 64, 1)'
		                            ],
		                            borderWidth: 1 //��輱 ����
		                        }
		                    ]
		                },
		                options: {
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
				////////////// chart.js ������ ���� /////////////////////////////////	
				}, 
				
				error : function(e) {
					console.log(e);
				}

			});

		});
		
       	
		
		
		
		
		
        
		
		
		
		
		
		
		
		
		
		
		
	</script>

</body>
</html>