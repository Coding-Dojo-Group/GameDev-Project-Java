var count = 9;
var countelement = document.querySelector(".likes");

console.log(countelement);

function add() {
    countelement.innerText = +count + " like(s)";
    count++;
    console.log(count);
}

var count2 = 13;
var countelement2 = document.querySelector(".likes2");

console.log(countelement);

function add2() {
    countelement2.innerText = +count2 + " like(s)";
    count2++;
    console.log(count);
}

var count3 = 9;
var countelement3 = document.querySelector(".likes3");


function add3() {
    countelement3.innerText = +count3 + " like(s)";
    count3++;
    console.log(count);
}