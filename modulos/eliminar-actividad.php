<?php
    // Obtenemos los valores por medio del metodo POST del formulario y escapamos caracteres especiales html con el método clear()
    $id_curso = clear($id_curso);
    $id_actividad = clear($id_actividad);

    $link = conectarBD();
    $query = "DELETE FROM actividad WHERE id_actividad = $id_actividad";
    $q = mysqli_query($link, $query);

?>