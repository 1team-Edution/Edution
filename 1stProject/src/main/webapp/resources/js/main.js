
    const modal1 = document.getElementById("modal1")
    const btnModal1 = document.getElementById("btn-modal1")
    btnModal1.addEventListener("click", e => {
        modal1.style.display = "flex"})
    const closeBtn1 = modal1.querySelector(".close-area1")
    closeBtn1.addEventListener("click", e => {
        modal1.style.display = "none"})   
    modal1.addEventListener("click", e => {
        const evTarget = e.target
        if(evTarget.classList.contains("modal-overlay")) {
            modal1.style.display = "none"}
    })

    const modal2 = document.getElementById("modal2")
    const btnModal2 = document.getElementById("btn-modal2")
    btnModal2.addEventListener("click", e => {
        modal2.style.display = "flex"})
    const closeBtn2 = modal2.querySelector(".close-area2")
    closeBtn2.addEventListener("click", e => {
        modal2.style.display = "none"})   
    modal2.addEventListener("click", e => {
        const evTarget = e.target
        if(evTarget.classList.contains("modal-overlay")) {
            modal2.style.display = "none"}
    })

    const modal3 = document.getElementById("modal3")
    const btnModal3 = document.getElementById("btn-modal3")
    btnModal3.addEventListener("click", e => {
        modal3.style.display = "flex"})
    const closeBtn3 = modal3.querySelector(".close-area3")
    closeBtn3.addEventListener("click", e => {
        modal3.style.display = "none"})   
    modal3.addEventListener("click", e => {
        const evTarget = e.target
        if(evTarget.classList.contains("modal-overlay")) {
            modal3.style.display = "none"}
    })





    //기능구현후 DB에서 가져올예정

    //테스트용객체
    const todotest=[{"todo_seq":1,"todo_title":"리스트출력","todo_content":"내용","todo_tag":"#exam","todo_yn":"0","todo_percent":"0","user_id":"6","reg_date":"2022-10-4"},
                {"todo_seq":2,"todo_title":"리스트출력2","todo_content":"내용","todo_tag":"#exam","todo_yn":"0","todo_percent":"0","user_id":"6","reg_date":"2500-1-1"},
                {"todo_seq":1,"todo_title":"리스트출력3","todo_content":"내용","todo_tag":"#exam","todo_yn":"1","todo_percent":"0","user_id":"6","reg_date":"2022-10-4"}]




    let taskBoardToday=document.querySelector("#task-board-today");
    let taskBoardMonth=document.querySelector("#task-board-monthly");
    let taskBoardFuture=document.querySelector("#task-board-future");
    
    function toStringByFormatting(source, delimiter = '-') {
        const year = source.getFullYear();
        const month = source.getMonth() + 1;
        const day = source.getDate();
        return [year, month, day].join(delimiter);
    }

    let renderToday=()=>{
        let today = toStringByFormatting(new Date(),'-');
        let resultHTML="";
        //이 객체 변경
        todotest.forEach(x=>{
            if(x.reg_date==today){
                if(x.todo_yn==0){
                resultHTML +=`<div class="task">• ${x.todo_title}<span class="todoseq">${x.todo_seq}</span></div>`;  }
                else{resultHTML +=`<div class="task task-done">× ${x.todo_title}<span class="todoseq">${x.todo_seq}</span></div>`;  }}
            });
        taskBoardToday.innerHTML=resultHTML;
    }

    renderToday();

    let renderMonthly=()=>{
        
        let yr=new Date().getFullYear();
        let mon=new Date().getMonth()+1;
        let resultHTML="";
        //이 객체 변경
        todotest.forEach(x=>{
            let arr=x.reg_date.split("-");
            if(arr[0]==yr&&arr[1]==mon){
                if(x.todo_yn==0){
                resultHTML +=`<div class="task">• ${x.todo_title}<span class="todoseq">${x.todo_seq}</span></div>`;  }
                else{resultHTML +=`<div class="task task-done">× ${x.todo_title}<span class="todoseq">${x.todo_seq}</span></div>`;  }}
            });
        taskBoardMonth.innerHTML=resultHTML;
    }
    
    renderMonthly();

    let renderfuture=()=>{
        let resultHTML="";
        //이 객체 변경
        todotest.forEach(x=>{
            if(x.reg_date=='2500-1-1'){
                resultHTML +=`<div class="task">• ${x.todo_title}<span class="todoseq">${x.todo_seq}</span></div>`;  }
            });
        taskBoardFuture.innerHTML=resultHTML;
    } 
    
    renderfuture();
    
    

    let date = new Date();

		const renderCalender = () => {
      const viewYear = date.getFullYear();
      const viewMonth = date.getMonth();
  		
  
      document.querySelector('.year-month').textContent = `${viewYear}년 ${viewMonth + 1}월`;

      
      const prevLast = new Date(viewYear, viewMonth, 0);
      const thisLast = new Date(viewYear, viewMonth + 1, 0);

      const PLDate = prevLast.getDate();
      const PLDay = prevLast.getDay();

      const TLDate = thisLast.getDate();
      const TLDay = thisLast.getDay();

      const prevDates = [];
      const thisDates = [...Array(TLDate + 1).keys()].slice(1);
      const nextDates = [];

      if (PLDay !== 6) {
        for (let i = 0; i < PLDay + 1; i++) {
          prevDates.unshift(PLDate - i);
        }
      }

      for (let i = 1; i < 7 - TLDay; i++) {
        nextDates.push(i);
      }

      const dates = prevDates.concat(thisDates, nextDates);
      const firstDateIndex = dates.indexOf(1);
      const lastDateIndex = dates.lastIndexOf(TLDate);


      dates.forEach((date, i) => {
        const condition = i >= firstDateIndex && i < lastDateIndex + 1
                          ? 'this'
                          : 'other';
        dates[i] = `<div class="date"><span class=${condition}>${date}</span><br>`;
        
        
        //여기부터

        let ynm = document.querySelector('.year-month');
        let ynmStr=ynm.innerText;
        ynmStr= ynmStr.replace("년 ", "-");
        ynmStr= ynmStr.replace("월", "-");
        let thisDate=ynmStr+date;
        if(condition=='other'){thisDate="";}
        //테스트용객체
        todotest2=[{"todo_seq":1,"todo_title":"리스트출력","todo_content":"내용","todo_tag":"#exam","todo_yn":"0","todo_percent":"0","user_id":"6","reg_date":"2022-9-30"},
                {"todo_seq":2,"todo_title":"리스트출력2","todo_content":"내용","todo_tag":"#exam","todo_yn":"0","todo_percent":"0","user_id":"6","reg_date":"2022-8-1"},
                {"todo_seq":1,"todo_title":"리스트출력3","todo_content":"내용","todo_tag":"#exam","todo_yn":"1","todo_percent":"0","user_id":"6","reg_date":"2022-10-4"}]
        //객체바인딩된 객체(테스트안해봄)
        //todotest -> todolist로 바꿀것

                todotest2.forEach(x=>{
                  if(x.reg_date==thisDate){
                    dates[i]+=`<div class='caltodo'>${x.todo_title}</div>`;          
                  }                
            });
        //여기까지
        dates[i]+=`</div>`;
        });


      document.querySelector('.dates').innerHTML = dates.join('');

      const today = new Date();
      if (viewMonth === today.getMonth() && viewYear === today.getFullYear()) {
        for (let date of document.querySelectorAll('.this')) {
          if (+date.innerText === today.getDate()) {
            date.classList.add('today');
            break;
          }
        }
      }
    };


    renderCalender();

    const prevMonth = () => {
        date.setDate(1);
        date.setMonth(date.getMonth() - 1);
        renderCalender();
        
        
      }
      
      const nextMonth = () => {
        date.setDate(1);
        date.setMonth(date.getMonth() + 1);
        renderCalender();
        
      }
      
      const goToday = () => {
        date = new Date();
        renderCalender();

      }

		//seq 변수
		let todonum = "";
    //우클릭시 메뉴 보이기
    let task=document.querySelectorAll(".task");
    task.forEach(i => {
        i.addEventListener("contextmenu", function(e) {

    e.preventDefault(); // 원래 있던 오른쪽 마우스 이벤트를 무효화한다.
    var x = e.pageX + 'px'; // 현재 마우스의 X좌표
    var y = e.pageY + 'px'; // 현재 마우스의 Y좌표

    const popMenu = document.getElementById('popMenu'); // 팝업창을 담아옴

			/*
			    스타일 지정, 우클릭 한 위치에 팝업창 띄워줌
			*/
			popMenu.style.position = 'absolute'; 
			popMenu.style.left = x;
			popMenu.style.top = y;
			popMenu.style.display = 'block';
			
			todonum= i.lastChild.innerText;
			//메뉴에 기능 추가
			let checkMenu=document.querySelector("#checkMenu");
			let editMenu=document.querySelector("#editMenu");
			let deleteMenu=document.querySelector("#deleteMenu");
			
			checkMenu.addEventListener("click",function(){
				console.log(todonum);
				location.href = "TodoCheck.do?todonum="+todonum;
				});
			
			editMenu.addEventListener("click",function(){
				location.href = "TodoEdit.do?todonum="+todonum;
				});
			
			deleteMenu.addEventListener("click",function(){
				location.href = "TodoDelete.do?todonum="+todonum;
				});
			
			})
        
    });
   

	    //클릭시 메뉴 숨기기
	    document.addEventListener("click", function(e) {

        // 노출 초기화
        popMenu.style.display = 'none';   
        popMenu.style.top = null;
        popMenu.style.left = null;
        
    });

   
