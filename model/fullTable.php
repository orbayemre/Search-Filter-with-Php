<?php
     require "databaseConnection.php";
     function getTbl(){
        $obj = connect();
        $result = $obj->query("SELECT * FROM products");
        return $result->fetchAll();
        
    }
    $tbl = getTbl();
    echo json_encode($tbl);   
?>