
setTimeout(()=>{
    var getTable = new XMLHttpRequest();
    getTable.open("GET", "http://localhost/project1/model/fullTable.php",true);
        getTable.onload = () =>{
            if(getTable.status = 200)
            {
                var tbl= JSON.parse(getTable.responseText);
                add(tbl);    
            }
        }
        getTable.send();
});

fetchResults = (parBrand,parColor,parSize,parGender,parPrice) =>{
    
    var xhttp1= new XMLHttpRequest();
        xhttp1.open("POST", "http://localhost/project1/model/requestTable.php",true);
        xhttp1.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhttp1.onload = () =>{
            if(xhttp1.status = 200){
                var response = JSON.parse(xhttp1.responseText);
                add(response);
            }
        }


        parBrand = parBrand.replaceAll(" ","-");
        parColor = parColor.replaceAll(" ","-");
        parSize = parSize.replaceAll(" ","-");
        parGender = parGender.replaceAll(" ","-");
        parPrice = parPrice.replaceAll(" ","-");

        var data = "brand="+parBrand+"&color="+parColor+"&size="+parSize+"&gender="+parGender+"&price="+parPrice;
        xhttp1.send(data);
}