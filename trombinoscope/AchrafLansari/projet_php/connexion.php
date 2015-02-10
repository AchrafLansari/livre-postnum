<?php

function connect(){
 try{
        $db = new PDO('mysql:host=localhost;dbname=trombinoscope','root', '');
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        echo "3la slamtek";
        return $db;
 }catch (Exception $ex){
   echo  $ex->getMessage();
 }
}

?>
