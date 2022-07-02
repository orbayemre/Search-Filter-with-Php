<?php
    require "databaseConnection.php";
    $obj = connect();
    
    $brand = $_POST['brand'];
    $size = $_POST['size'];
    $gender = $_POST['gender'];
    $price = $_POST['price'];
    $color = $_POST['color'];
    
    $brand = str_replace("-"," ",$brand);
    $size = str_replace("-"," ",$size);
    $gender = str_replace("-"," ",$gender);
    $price = str_replace("-"," ",$price);
    $color = str_replace("-"," ",$color);


    $sql = "SELECT * FROM products WHERE Id>0 ";
    
    if(!empty($brand)){$sql .="AND (Brand='$brand') ";}
    if(!empty($color)){$sql .="AND (Color='$color') ";}
    if(!empty($size)){$sql .="AND (Size='$size') ";}
    if(!empty($gender)){$sql .="AND (Gender='$gender') ";}
    if(!empty($price)){$sql .="AND ('$price') ";}
  
    $result = $obj->query($sql);
    echo json_encode($result->fetchAll());
?>