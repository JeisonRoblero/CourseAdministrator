<?php
    // Obtenemos los valores por medio del metodo POST del formulario y escapamos caracteres especiales html con el método clear()
    $id_actividad = clear($id_actividad);
    $id_curso = clear($id_curso);
    $id_tipo_actividad = clear($id_tipo_actividad);
    $fecha_inicio = clear($fecha_inicio);
    $tema = clear($tema);
    $subtema = clear($subtema);
    $descripcion = clear($descripcion);
    $punteo = clear($punteo);

    // En el caso de que la actividad sea una clase, hay ciertos datos que no son necesarios
    if($id_tipo_actividad == 0) {
        $fecha_entrega = null;
        $fecha_disponible = null;
    } else {
        $fecha_entrega = clear($fecha_entrega);
        $fecha_disponible = clear($fecha_disponible);
    }
    
    // Validamos si la actividad se encuentra establecida con un estado verdadero o falso, 1 o 0
    if(isset($completado)) {
        $completado = 1;
    } else {
        $completado = 0;
    }
    
    // Se conecta a la base de datos,
    // Se ejecuta la consulta y retornamos a la página anterior
    $link = conectarBD();
    $query = "UPDATE actividad 
                    SET tema = '$tema',
                        subtema = '$subtema',
                        descripcion = '$descripcion',
                        punteo = '$punteo',
                        completado = '$completado',
                        fecha_inicio = '$fecha_inicio',
                        fecha_entrega = '$fecha_entrega',
                        fecha_disponible = '$fecha_disponible',
                        id_tipo_actividad = '$id_tipo_actividad'
                    WHERE id_actividad = $id_actividad";
    $q = mysqli_query($link, $query);
    setcookie("mostrarMensaje", "true", time() + (86400 * 30), "/");
    redir("?p=detalle-curso&idCurso=".$id_curso."&success=2");
?>