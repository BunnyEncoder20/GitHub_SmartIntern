/*
    JavaScript (programming language)
    ----------
    It is used to add functionality to an html page and make it dynamic in nature 
    To insert into the html file use the <script></script> tag
    Uses the Camel case to name the variables 
    Camel : bunnySoma
    Snake : bunny_soma
    kebab : bunny-soma


    Data Types of JS
    ---------------
    Number (int,float)
    String (in double or single qoutes)
    boolean 
    null
    undefined 


    Operators in JS 
    --------------
    Arithematic : +,-,*,/
    Comparisions : =<,<=,>=,=>, ==,===
    Logical : &&, ||, !


    Conditional statements in JS
    -------------------------
    1. If
    2. if else 
    3. if  
    4. switch 


    Loops in JS
    -----------
    1. for loop : when the number of iterations are generally know 
    2. while loop : when the number if iterations are unknown 



    JS functions 
    -----------
    Basic syntax :
    function funcName (arguments = defaultValue) {
        //body
        //return value 
    }


    JS scope 
    -------
    Local scope (only valid within the function it is defined in {within the curly braces})
    Global scope (valid throughout the code)
    

    JS Arrays 
    ---------
    var arrayName = [item1, item2] 

    Operations in Arrays  :
    1. Push 
    2. Pop (the elements in the end is popped out first (removed and returned))
    3. shift (removes and returns the first element of the array )
    4. unshift (element is inserted in the beginning of the array)
    5. slice (returns numbers from an starting index to an end index)


    JS object 
    ---------
    It's a groups key value pairs 
    var objName = {
        property1 : value ;
        property2 : value;
        property3 : value;
    }
*/

var x ;
console.log(x)
x = 8
console.log(x)
alert("Hello the JS file is working !")

var naam = "bunny"
console.log("Length : "+naam.length)
console.log(naam[0])
console.log(naam[4])

/*
    Note : 
    ------
    alert() is used to given an alert msg to the user 
    prompt() is used to take input from the user 
*/

var num = Number(prompt("Enter A number"));
if(num%2===0){
    alert("The number is even ");
}
else{alert("The number is odd ");}

while (num>0) {
    alert("While loop "+num);
    num--;
}

naam = String(prompt("Enter an name : "));
var i = 0;
while(i<naam.length){
    alert(naam[i]); 
    i++;
}

function func(naam = "Soma") {
    alert("This line is been printed by the function ! \nHello "+naam+" !");
}

alert("Going to call the function after this msg !!!");
func(naam);

function SquareThisShit(num) {
    return num*num;
}

n = Number(prompt("Enter the DAAAMN number for Square function boy : "))
alert("Magic MoFo : "+SquareThisShit(n))

function printing(arr) {
    var i = 0;
    while (i<arr.length) {
        alert(arr[i]);
        i++;
    }
}
alert("Calling the array printing function after this msg : ");
var arr1 = ["bunny","Soma",100,true,];
printing(arr1) ;

var arr2 = [1,2,3,4];
alert(arr2);
arr2.push(5);
alert(arr2);
arr2.pop();
alert(arr2);
arr2.shift();
alert(arr2);
arr2.unshift(1);
alert(arr2);
arr2 = arr2.slice(1,3);
alert(arr2);

var numbers = [[1,2],[3,4]];

var Movies = {
    name : "Kisi Ka Bhai Kisi ka Jaan",
    year : 2023,
    hero : "Salmon Bhai" 
}
alert("Displaying the properties of the Object Movies : ");
alert("Name : " + Movies.name);
alert("Year : " + Movies.year);
alert("Hero : " + Movies.hero);
