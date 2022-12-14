<?php
    // Se conecta a la base de datos y ejecuta la consulta
    $link = conectarBD();
    $query = "SELECT * FROM actividad ORDER BY id_actividad DESC LIMIT 1";
    $q = mysqli_query($link, $query);
    while ($ra = mysqli_fetch_array($q)) {
        $ultimoId = $ra['id_actividad'];
    }
    
    // Obtenemos los valores por medio del metodo POST del formulario y escapamos caracteres especiales html con el método clear()
    $id_actividad = $ultimoId+1;
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

    // Ejecutamos la consulta y retornamos a la página anterior
    $query2 = "INSERT INTO actividad VALUES ('$id_actividad','$tema','$subtema','$descripcion','$punteo','$completado','$fecha_inicio','$fecha_entrega','$fecha_disponible','$id_curso','$id_tipo_actividad')";
    $q2 = mysqli_query($link, $query2);
    setcookie("mostrarMensaje", "true", time() + (86400 * 30), "/");
    redir("?p=detalle-curso&idCurso=".$id_curso."&success=1");
?>