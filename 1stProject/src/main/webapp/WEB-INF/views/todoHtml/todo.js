let taskBoard=document.querySelector("#task-board");


//기능구현후 DB에서 가져올예정

//테스트용객체
let todotest=[{"todo_seq":1,"todo_title":"리스트출력","todo_content":"내용","todo_tag":"#exam","todo_yn":"0","todo_percent":"0","user_id":"6","reg_date":"2022-9-30"},
            {"todo_seq":2,"todo_title":"리스트출력2","todo_content":"내용","todo_tag":"#exam","todo_yn":"0","todo_percent":"0","user_id":"6","reg_date":"2500-1-1"},
            {"todo_seq":1,"todo_title":"리스트출력3","todo_content":"내용","todo_tag":"#exam","todo_yn":"1","todo_percent":"0","user_id":"6","reg_date":"2022-9-20"}]

// let render=()=>{
//     let resultHTML="";
//     for (let i=0; i<3;i++){
//         if(true){
//         resultHTML +=`<div class="task">할일 ${i+1}</div>`;}
//         else{resultHTML +=`<div class="task task-done">완료된 일</div>`;}
//     }
//     taskBoard.innerHTML=resultHTML;
// }

function toStringByFormatting(source, delimiter = '-') {
    const year = source.getFullYear();
    const month = source.getMonth() + 1;
    const day = source.getDate();
    return [year, month, day].join(delimiter);
}

let renderToday=()=>{
    let today = toStringByFormatting(new Date(),'-');
    let resultHTML="";
    todolist.forEach(x=>{
        if(x.reg_date==today){
            if(x.todo_yn==0){
            resultHTML +=`<div class="task">• ${x.todo_title}</div>`;  }
            else{resultHTML +=`<div class="task task-done">× ${x.todo_title}</div>`;  }}
        });
    taskBoard.innerHTML=resultHTML;
}

let renderMonthly=()=>{
    
    let yr=new Date().getFullYear();
    let mon=new Date().getMonth()+1;
    let resultHTML="";

    todolist.forEach(x=>{
        let arr=x.reg_date.split("-");
        if(arr[0]==yr&&arr[1]==mon){
            if(x.todo_yn==0){
            resultHTML +=`<div class="task">• ${x.todo_title}</div>`;  }
            else{resultHTML +=`<div class="task task-done">× ${x.todo_title}</div>`;  }}
        });
    taskBoard.innerHTML=resultHTML;
}

let renderfuture=()=>{
    let resultHTML="";
    todolist.forEach(x=>{
        if(x.reg_date=='2500-1-1'){
            resultHTML +=`<div class="task">• ${x.todo_title}</div>`;  }
        });
    taskBoard.innerHTML=resultHTML;
}