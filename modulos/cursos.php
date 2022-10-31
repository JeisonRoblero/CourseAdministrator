<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="imagenes/icono.png" type="image/x-icon">
    <title>Course Administrator</title>
    <link rel="stylesheet" href="css/style.css">

    <!-- Fuente -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">

</head>
<body>   
        <div class="panel-cursos">
            
            <?php
                // Obteniendo datos de la tabla cursos de la base de datos
                $link = concectarBD();
                $query = "SELECT * FROM curso";
                $q = mysqli_query($link, $query);
                
                while($r = mysqli_fetch_array($q)) {
            ?>
                    <div class="tarjeta-curso">
                        <div class="curso-img" onclick="window.location.href='?p=detalle-curso&idCurso=<?=$r['id_curso']?>'" alt="Materia">
                            <img src="<?=$r['imagen']?>" alt="Materia">
                        </div>
                        <div class="cuerpo-tarjeta">
                            <a href="?p=detalle-curso&idCurso=<?=$r['id_curso']?>">
                                <h3 class="nombre-curso"><?= $r['nombre'] ?></h3>
                                <h4 class="codigo-curso"><?= $r['id_curso'] ?></h4>
                                <h5 class="anio-curso">2022-2</h5>
                            </a>
                        </div>         
                    </div>
            <?php
                }
            ?>

        </div>
</body>
</html>