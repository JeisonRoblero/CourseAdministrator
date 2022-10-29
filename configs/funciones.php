<?php 
include "config.php";

    function concectarBD() {
        global $host_mysql, $puerto, $user_mysql, $pass_mysql, $db_mysql;

        if(!$link = mysqli_connect($host_mysql, $user_mysql, $pass_mysql)) {
            echo "Error conectando a la base de datos.<br>";
            exit();
        }

        if(!mysqli_select_db($link, $db_mysql)) {
            echo "Error seleccionando la base de datos.<br>";
            exit();
        } 

        return $link;
    }

    



?>