const brandInput = document.querySelectorAll("input[name='brandFilter']");
const genderInput = document.querySelectorAll("input[name='genderFilter']");
const colorInput = document.querySelectorAll("input[name='colorFilter']");
const sizeInput = document.querySelectorAll("input[name='sizeFilter']");
const priceInput = document.querySelectorAll("input[name='priceFilter']");
const fetchButton = document.querySelector(".fetch");

fetchButton.addEventListener("click",()=>{
   
    var brandValue = "";
    var genderValue = "";
    var colorValue = "";
    var sizeValue = "";
    var priceValue = "";

    var i=0;
    if(brandInput[0].checked == true){brandValue="adidas";i++;}
    if(brandInput[1].checked == true){
        if(i==0){brandValue+="nike"}
        else{brandValue+="' OR Brand='nike"}
        i++;
    }
    if(brandInput[2].checked == true){
        if(i==0){brandValue+="puma"}
        else{brandValue+="' OR Brand='puma"}
    }

    i=0;
    if(genderInput[0].checked == true){genderValue="kadın";i++;}
    if(genderInput[1].checked == true){
        if(i==0){genderValue+="erkek"}
        else{genderValue+="' OR Gender='erkek"}
        i++;
    }
    if(genderInput[2].checked == true){
        if(i==0){genderValue+="unisex"}
        else{genderValue+="' OR Gender='unisex"}
    }

    i=0;
    if(colorInput[0].checked == true){colorValue="siyah";i++;}
    if(colorInput[1].checked == true){
        if(i==0){colorValue+="beyaz"}
        else {colorValue+="' OR Color='beyaz"}
        i++;
    }
    if(colorInput[2].checked == true){
        if(i==0){colorValue+="lacivert"}
        else {colorValue+="' OR Color='lacivert"}
        i++;
    }
    if(colorInput[3].checked == true){
        if(i==0){colorValue+="pembe"}
        else {colorValue+="' OR Color='pembe"}
    }
    
    i=0;
    if(sizeInput[0].checked == true){sizeValue="38";i++}
    if(sizeInput[1].checked == true){
        if(i==0){sizeValue+="39"}
        else {sizeValue+="' OR Size='39"}
        i++;
    }
    if(sizeInput[2].checked == true){
        if(i==0){sizeValue+="40"}
        else {sizeValue+="' OR Size='40"}
        i++;
    }
    if(sizeInput[3].checked == true){
        if(i==0){sizeValue+="41"}
        else {sizeValue+="' OR Size='41"}
        i++;
    }
    if(sizeInput[4].checked == true){
        if(i==0){sizeValue+="42"}
        else {sizeValue+="' OR Size='42"}
        i++;
    }
    if(sizeInput[5].checked == true){
        if(i==0){sizeValue+="43"}
        else {sizeValue+="' OR Size='43"}
    }

    
    i=0;
    if(priceInput[0].checked == true){priceValue="Price<250.00 ";i++;}
    else if(priceInput[1].checked == true){
        if(i==0){priceValue+="Price BETWEEN 250.00 AND 500.00 "}
        else {priceValue+=" OR BETWEEN 250.00 AND 500.00 "}
        i++;
    }
    if(priceInput[2].checked == true){
        if(i==0){priceValue+="Price BETWEEN 500.00 AND 750.00 "}
        else {priceValue+=" OR BETWEEN 500.00 AND 750.00 "}
        i++;
    }
    if(priceInput[3].checked == true){
        if(i==0){priceValue+="Price>750.00 "}
        else {priceValue+=" OR Price>750.00"}
        i++;
    }
        
    fetchResults(brandValue,colorValue,sizeValue,genderValue,priceValue);
})

