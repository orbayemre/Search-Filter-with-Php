function add(tbl) {

    const results = document.querySelector(".results");
    results.innerHTML="";

    const gif= document.createElement("img");
    gif.setAttribute("src","https://i.pinimg.com/originals/07/24/88/0724884440e8ddd0896ff557b75a222a.gif");
    gif.style.width="400px";
    gif.style.position="relative";
    results.appendChild(gif);

    setTimeout(function() {
        results.innerHTML="";
        if(tbl.length == 0)
        {
            const notFound =document.createElement("div")
            notFound.className="notFound";
            const img =document.createElement("img")
            img.setAttribute("src","https://cdn-icons-png.flaticon.com/512/1178/1178479.png");
            img.style.width="80px";
            img.style.marginBottom="10px";
            img.style.marginTop="30px";
            notFound.appendChild(img);
    
            const text =document.createElement("div")
            text.className="text";
            text.innerHTML="Ürün bulunamadı.";
            text.style.fontSize="30px";
    
            results.appendChild(notFound);
            results.appendChild(text);
            results.style.justifyContent="center";
            results.style.flexDirection="column";
        }
        else{
            
            results.style.justifyContent="none";
            results.style.flexDirection="row";
            var shoes=[];
            var allRes=[];
            tbl.forEach(element => {
                var i=0;
                shoes.forEach(shoe=>{
                    if(shoe == element['Description']+" - "+element['Color']){i++;}
                });
    
                if(i == 0){
                    shoes.push(element['Description']+" - "+element['Color']);
                
                    const result = document.createElement("div");
                    result.className="result "+element['Description']+"-"+element['Color'];
            
                    const image = document.createElement("div");
                    image.className="image";
                    const img = document.createElement("img");
                    img.setAttribute("src",element['ImgUrl']);
            
                    image.appendChild(img);
            
                    const body = document.createElement("div");
                    body.className="body";
                    const brand = document.createElement("div");
                    brand.className="brand";
                    brand.innerHTML=element['Brand'];
                    const descrp = document.createElement("div");
                    descrp.className="descrip";
                    descrp.innerHTML=element['Description'];
                    const price = document.createElement("div");
                    price.className="price";
                    price.innerHTML=element['Price']+"TL";
                    
                    const color = document.createElement("div");
                    color.className="color";
                    element['Color'] = element['Color'].charAt(0).toUpperCase() + element['Color'].slice(1);
                    color.innerHTML=element['Color'];
    
                    const size = document.createElement("div");
                    size.className="size";
    
                    for (let i = 37; i <= 43; i++){
                        const sizeVal = document.createElement("span");
                        sizeVal.className=i;
                        sizeVal.innerHTML=" "+i+" ";
                        sizeVal.style.padding="2px";
                        sizeVal.style.fontSize="18px";
                        if(i != element['Size'])
                        {
                            sizeVal.style.color="gray";
                            sizeVal.style.fontSize="14px";
                        }
                        size.appendChild(sizeVal)
                    }
    
                    body.appendChild(brand);
                    body.appendChild(descrp);
                    body.appendChild(price);
                    body.appendChild(color);
                    body.appendChild(size);
            
                    result.appendChild(image);
                    result.appendChild(body);
        
                    allRes.push(result);
                }
                else{
                    
                    allRes.forEach(res =>{
                        if(res.className == "result "+element['Description']+"-"+element['Color']){
                            for (let i = 37; i <= 43; i++){
                                if(i == element['Size'])
                                {
                                    var doc = res.lastChild.lastChild;
                                    var notes = null;
                                    for (var j = 0; j < doc.childNodes.length; j++) {
                                        if (doc.childNodes[j].className == i) {
                                        notes = doc.childNodes[j];
                                        break;
                                        }        
                                    }
                                    notes.style.color="black";
                                    notes.style.fontSize="18px";
                                }
                            }
                        } 
                    });
    
                }
            });
            
            allRes.forEach(res =>{
                results.appendChild(res);
            });
        }
        
    }, 1500);
}


$(document).ready(function(){
    


    filterToggle = () => {
        var brandCont=1;
        var genderCont=0;
        var colorCont=0;
        var sizeCont=0;
        var priceCont=0;
        $(".brand .head").click(()=>{
            $(".brand .body").slideToggle();
            if(brandCont==1){$(".brand .head i").css({ WebkitTransform: 'rotate( 0deg)'});brandCont=0;}
            else{$(".brand .head i").css({ WebkitTransform: 'rotate( 180deg)'});brandCont=1;}
            
        });
        $(".gender .head").click(()=>{
            $(".gender .body").slideToggle();
            if(genderCont==1){$(".gender .head i").css({ WebkitTransform: 'rotate( 0deg)'});genderCont=0;}
            else{$(".gender .head i").css({ WebkitTransform: 'rotate( 180deg)'});genderCont=1;}
    
        });
        $(".color .head").click(()=>{
            $(".color .body").slideToggle();
            if(colorCont==1){$(".color .head i").css({ WebkitTransform: 'rotate( 0deg)'});colorCont=0;}
            else{$(".color .head i").css({ WebkitTransform: 'rotate( 180deg)'});colorCont=1;}
    
        });
        $(".size .head").click(()=>{
            $(".size .body").slideToggle();
            if(sizeCont==1){$(".size .head i").css({ WebkitTransform: 'rotate( 0deg)'});sizeCont=0;}
            else{$(".size .head i").css({ WebkitTransform: 'rotate( 180deg)'});sizeCont=1;}
    
    
        });
        $(".price .head").click(()=>{
            $(".price .body").slideToggle();
            if(priceCont==1){$(".price .head i").css({ WebkitTransform: 'rotate( 0deg)'});priceCont=0;}
            else{$(".price .head i").css({ WebkitTransform: 'rotate( 180deg)'});priceCont=1;}
    
        });
    } 
    filterToggle();
});