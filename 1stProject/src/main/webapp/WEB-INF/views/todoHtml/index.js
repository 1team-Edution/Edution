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
    let todotest=[{"todo_seq":1,"todo_title":"리스트출력","todo_content":"내용","todo_tag":"#exam","todo_yn":"0","todo_percent":"0","user_id":"6","reg_date":"2022-9-30"},
            {"todo_seq":2,"todo_title":"리스트출력2","todo_content":"내용","todo_tag":"#exam","todo_yn":"0","todo_percent":"0","user_id":"6","reg_date":"2022-8-1"},
            {"todo_seq":1,"todo_title":"리스트출력3","todo_content":"내용","todo_tag":"#exam","todo_yn":"1","todo_percent":"0","user_id":"6","reg_date":"2022-9-30"}]
    //객체바인딩된 객체(테스트안해봄)


            todolist.forEach(x=>{
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

  // const firstDateIndex = date.indexOf(1);
  // const lastDateIndex = date.lastIndexOf(TLDate);
  // date.forEach((date, i) => {
  //   const condition = i >= firstDateIndex && i < lastDateIndex + 1
  //                     ? 'this'
  //                     : 'other';

  //   dates[i] = `<div class="date"><span class="${condition}">${date}</span></div>`;
  // })


