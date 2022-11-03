<?php 
include "config.php";
    // Conecta a la base de datos
    function conectarBD() {
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

    // Extrae de la fecha enviada por parámetro el mes escrito
    function obtenerMes($fecha) {
        $meses = ['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'];
        $subFecha = explode("-",$fecha);
        $numeroMes = (int)$subFecha[1];
        $mes = $meses[$numeroMes-1];
        return $mes;
    }

    // Convierte la fecha de inglés a español
    function fechaEs($fecha){
		$e = explode("-",$fecha);
		$year = $e[0];
		$month = $e[1];
		$day = $e[2];

		return $day."/".$month."/".$year;
	}

    // Limpia o escapa caracteres especiales html
    function clear($var){
		htmlspecialchars($var);
		return $var;
	}

    // Redirige a una página
    function redir($var){
    ?>
        <script>
            window.location="<?=$var?>";
        </script>
    <?php
        die();
    }

    // Alertas 
    function alert($var,$type,$url){
		//error, success, info
		if ($type==0) {
			$t = "error";
			$titu = 'Error 😥';
		}elseif ($type==1) {
			$t = "success";
			$titu = '¡Éxito! 😀';
		}elseif ($type==2) {
			$t = "info";
			$titu = '¡Espera! 😄';
		}
		
		echo '<script>swal({ title: "'.$titu.'", text: "'.$var.'", icon: "'.$t.'"});';
		echo '$(".swal-button").click(function(){ window.location="?p='.$url.'"; });';
		echo '</script>';

	}

    

?>