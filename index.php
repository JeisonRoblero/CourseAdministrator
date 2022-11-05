<?php
// Se incluyen archivos de configuración
include "configs/config.php";
include "configs/funciones.php";

// Se valida que la página ya se haya establecido anteriormente
if(!isset($p)) {
    $p = "cursos";
} else {
    $p = $p;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Icono Principal (favicon) -->
    <link rel="shortcut icon" href="imagenes/icono.png" type="image/x-icon">
    <!-- Hoja de Estilos -->
    <link rel="stylesheet" href="css/style.css">

    <!-- Fuente -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">

    <!-- Librería de iconos -->
    <script src="https://kit.fontawesome.com/a3c0bc2905.js" crossorigin="anonymous"></script>

    <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>

    <!-- Sweetalert -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <style>
	    section + div {
	        visibility: hidden;
	    }
	    
	    .disclaimer {
	        visibility: hidden;
	    }
  	</style>
</head>
<body>
    <header>
        <a href="./" class="left-header">
            <img class="logo-header" src="imagenes/icono.png" alt="Course Administrator">
            <h1 class="titulo-header">Administración de Cursos</h1>
        </a>

        <div class="right-header">
            <a href="?p=login" class="perfil">
                <img src="imagenes/perfil.png" alt="Perfil">
            </a>
        </div>
    </header>

    

    <main>
    <?php
        // Si la página existe se procede a ingresar en ella, de lo contrario se le indica al usuario
        if(file_exists("modulos/".$p.".php")) {
            include "modulos/".$p.".php";
        } else {
            echo "<i>Lo sentimos no hemos encontrado el modulo <b>".$p."</b>, asegurate de ingresar el enlace correctamente <a href='./'>Regresar</a></i>";
        }    
    ?>   
    </main>

    <footer>
        <div class="container-footer">
            <a href="./" class="logo-footer-container"><img src="imagenes/icono.png" class="logo-footer" alt="Course Administrator"></a>
            <div class="columna-footer" style="width:50%">
                <h5 class="titulo-footer">Administración de Cursos</h5>
                <p class="parrafo-footer">Sitio web de control y administración de las actividades de los cursos</p>
            </div>
            <div class="columna-footer">
                <h5 class="titulo-footer">Desarrolladores</h5>
                <ul>
                    <li><a class="nombre-desarrollador" href="#!">7690-20-14576 Jeison Roblero</a></li>
                    <li><a class="nombre-desarrollador" href="#!">7690-20-26003 Pablo Garcia</a></li>
                </ul>
            </div>
        </div>
        <div class="footer-copyright">
            <div>© 2022 Copyright Course Administrator</div>
            <a class="link-mas-info" href="#!">Más información</a>
        </div>
    </footer>  

    <div id="ultimo">
	    
	</div>
</body>
</html>