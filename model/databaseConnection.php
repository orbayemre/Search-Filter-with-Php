<?php
    function connect(){
        $servername = "localhost";
        $username = "root";
        $password = "";
        try 
        {
            $conn = new PDO("mysql:host=$servername;dbname=project;charset=utf8", $username, $password);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $conn;

        } 
        catch(PDOException $e) {
            return null;
        }
    }
    
?>