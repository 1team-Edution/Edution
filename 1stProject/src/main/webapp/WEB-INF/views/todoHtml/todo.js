let taskBoard=document.querySelector("#task-board");

//기능구현후 DB에서 가져올예정
let render=()=>{
    let resultHTML="";
    for (let i=0; i<3;i++){
        if(true){
        resultHTML +=`<div class="task">할일 ${i+1}</div>`;}
        else{resultHTML +=`<div class="task task-done">완료된 일</div>`;}
    }
    taskBoard.innerHTML=resultHTML;
}

render();
