<?php 
include "config.php";
    // Conecta a la base de datos
    function conectarBD() {
		// Variables de función globales
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

    // Alerta con redireccionamiento
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

    // Alerta sin redireccionamiento
    function alertnor($var,$type){

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
		echo '$(".swal-button");';
		echo '</script>';
	}

	$suma = [0,0,0,0,0,0,0,0,0,0,0,0];
	// Función para sumar las actividades por mes
	function sumarPorMes($mesP) {
		$meses = ['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'];
		if($mesP == "Enero") {
			$suma[0]++;
		} else if ($mesP == "Febrero") {
			$suma[1]++;
		} else if ($mesP == "Marzo") {
			$suma[2]++;
		} else if ($mesP == "Abril") {
			$suma[3]++;
		} else if ($mesP == "Mayo") {
			$suma[4]++;
		} else if ($mesP == "Junio") {
			$suma[5]++;
		} else if ($mesP == "Julio") {
			$suma[6]++;
		} else if ($mesP == "Agosto") {
			$suma[7]++;
		} else if ($mesP == "Septiembre") {
			$suma[8]++;
		} else if ($mesP == "Octubre") {
			$suma[9]++;
		} else if ($mesP == "Noviembre") {
			$suma[10]++;
		} else if ($mesP == "Diciembre") {
			$suma[11]++;
		} 

		return $suma;
	}

	// Almacenamiento en cookies
	setcookie("mostrarMensaje", "false", time() + (86400 * 30), "/");

?>