 // all the function are arrows function 
 // to return the values in the calculator 
 var back = () => {
     var exp = document.calculatrice.textview.value;
     document.calculatrice.textview.value = exp.substring(0, exp.length - 1);
 };


 // to open the nav bar 

 var openNav = () => {
     document.getElementById("myNav").style.height = "100%";
 };

 var closeNav = () => {
     document.getElementById("myNav").style.height = "0%";
 };

 var sqr = () => {
     var exp = document.calculatrice.textview.value;
     document.calculatrice.textview.value = exp ** 2;
 };


 //factorial function with Recursion 
 var factorCalc = (e) => {
     var exp = document.calculatrice.textview.value;

     var factorial = (exp) => {

         if (exp === 0) {
             return 1;
         }
         return exp * factorial(exp - 1);

     }
     document.calculatrice.textview.value = factorial(exp);
 };


 // add jquery to the input field to fix the max Number of digit on 10 numb  the no of digits 


 var a = document.querySelector("input");
 a.addEventListener("keyup", replaceChar = (e) => {
     a.value = a.value.replace(/[a-z]|[\@\$\^\&\!\_\?\>\<\}\{\#\'\"\;]/gi, '');

 });


 //  to act the  enter key
 $(document).click(enterKey = () => {

     $(document).bind('keypress', pressed);
 });


 pressed = (e) => {
     if (e.keyCode === 13) {
         equal();
     }
 }


 // equal function = 
 var equal = () => {
     let ans = eval(document.calculatrice.textview.value)
     if (!(ans.toString().length > 20)) {
         document.calculatrice.textview.value = ans;

     } else {
         document.calculatrice.textview.value = 'Max digits';
     }

 }