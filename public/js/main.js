
const myVM = (() => {
     console.log('READY!!!!');
//variables
Button1 = document.querySelectorAll('.badBlood');
Button2 = document.querySelectorAll('.goodBlood');


//function
    function imageButton1(){
        var image = document.getElementById('badVein').classList.toggle('goodVein');
        image.src = 'images/badVein.svg';
        console.log('testing1');

    }
    function imageButton2(){
        var image = document.getElementById('badVein').classList.toggle('goodVein');
        image.src = 'images/badVein.svg';
        console.log('testing2');

    }


//execute
Button1.forEach(button => button.addEventListener('click', imageButton1));
Button2.forEach(button => button.addEventListener('click', imageButton2));

//variable 
var infoFact = document.querySelector('.fact1 p');

//function
//rendering tbl sidefacts data
 


//execution
//rendering tbl sidefacts data


 })();
