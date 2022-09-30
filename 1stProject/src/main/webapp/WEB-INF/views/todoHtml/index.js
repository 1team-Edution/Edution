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
    dates[i] = `<div class="date"><span class=${condition}>${date}</span><br><span class='caltodo'>할일</span></div>`;
    
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

  //seldate 시작
  let clickedDates = document.querySelectorAll('.this');
  let ynm = document.querySelector('.year-month');
  let selDate="date";

for(let i =0;i<clickedDates.length;i++){
    clickedDates[i].addEventListener("click",function(){
      ynmStr=ynm.innerText;
      ynmStr= ynmStr.replace("년 ", "-");
      ynmStr= ynmStr.replace("월", "-");
      selDate=ynmStr+clickedDates[i].innerText;
      //selDate: 클릭한 날짜 데이터
      console.log(selDate);
    });
  }
  //seldate 끝

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


