<?php
    // Se incluyen archivos de configuración
    include "../configs/config.php";
    include "../configs/funciones.php";

    // Obteniendo datos de la tabla actividad de la base de datos
    $link = conectarBD();
    $query = "SELECT * FROM actividad WHERE id_curso = $idCurso";
    $q = mysqli_query($link, $query);

    while($ra = mysqli_fetch_array($q)) {
        // Obteniendo datos de la tabla tipo_actividad de la base de datos
        $arreglo[] = $ra;
    }

    return $json;

?>