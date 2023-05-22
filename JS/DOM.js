/* 
    DOM - Document Object Model 
    --------------------------
    it is API for html and XML documents .
    All HTML elements in a page are put into one object called the DOM

    DOM is a plateform and lannguage neutral interfadce where you can dynamically
    access and update the content, style and structure of a html page 


    Eg : An HTML page which has jsut one table : 
    <table>
    -> tr (multiple)
        -> td (under each tr)
            -> whatever tag under this 
            

    w3c Core parts
    -------------
    1. Core DOM : for all the documents types 
    2. XML DOM : for only XML documents types 
    3. HTML DOM : only for HTML documents types 
    
    DOM selectors 
    ------------
    document.getElementById()
    document.querySelector
    document.querySelectorAll


    Events in JS
    -----------
    tells what to do when a specific 

*/

function printValue() {
    var naam = document.getElementById("naam").value ;
    alert(naam) ;
}r