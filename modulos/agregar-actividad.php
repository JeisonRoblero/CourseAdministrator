<?php

    $link = conectarBD();
    $query = "SELECT * FROM actividad ORDER BY id_actividad DESC LIMIT 1";
    $q = mysqli_query($link, $query);
    while ($ra = mysqli_fetch_array($q)) {
        $ultimoId = $ra['id_actividad'];
    }
    
    $id_actividad = $ultimoId+1;
    $id_curso = clear($id_curso);
    $fecha_inicio = clear($fecha_inicio);
    $fecha_entrega = clear($fecha_entrega);
    $fecha_disponible = clear($fecha_disponible);
    $tema = clear($tema);
    $subtema = clear($subtema);
    $descripcion = clear($descripcion);
    $id_tipo_actividad = clear($id_tipo_actividad);
    $punteo = clear($punteo);
    if(isset($completado)) {
        $completado = clear($completado);
        $query2 = "INSERT INTO actividad VALUES ('$id_actividad','$tema','$subtema','$descripcion','$punteo','$completado','$fecha_inicio','$fecha_entrega','$fecha_disponible','$id_curso','$id_tipo_actividad')";
        $q2 = mysqli_query($link, $query2);
        alert("Actividad Agregada Exitosamente!",1,'detalle-curso');
    } else {
        $query2 = "INSERT INTO actividad(id_actividad,tema,subtema,descripcion,punteo,fecha_inicio,fecha_entrega,fecha_disponible,id_curso,id_tipo_actividad) VALUES ('$id_actividad','$tema','$subtema','$descripcion','$punteo','$fecha_inicio','$fecha_entrega','$fecha_disponible','$id_curso','$id_tipo_actividad')";
        $q2 = mysqli_query($link, $query2);
        alert("Actividad Agregada Exitosamente!",1,'detalle-curso');
    }

?>