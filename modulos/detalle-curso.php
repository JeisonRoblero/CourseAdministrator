<?php
    // Obteniendo datos de la tabla curso de la base de datos
    $link = concectarBD();
    $query = "SELECT * FROM curso WHERE id_curso = $idCurso";
    $q = mysqli_query($link, $query);
    $rc = mysqli_fetch_array($q);

    // Obteniendo datos de la tabla actividad de la base de datos
    $query2 = "SELECT * FROM actividad WHERE id_curso = $idCurso";
    $q2 = mysqli_query($link, $query2);
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <title>Electrónica Digital | Course Administrator</title>
</head>
<body>
    <div class="detalle-curso-container">
        
        <div class="descripcion-curso">
            <div class="titulo-curso-detalle">
                <h3><?= $rc['nombre'] ?></h3>
            </div>
            <div class="separador"></div>
            <div class="descripcion-curso-caption">
                <div class="id-curso">
                    <b>Código de Curso:</b> <?= $rc['id_curso'] ?>
                </div>
                <div class="seccion-curso">
                    <b>Sección</b> "<?= $rc['seccion'] ?>"
                </div>
                <div class="creditos-curso">
                    <b>Creditos:</b> <?= $rc['creditos'] ?>
                </div>
            </div>
            <div class="fondo-obscuro-desc-curso"></div>
            <div class="fondo-descripcion-curso">
                <img src="<?= $rc['imagen'] ?>" alt="<?= $rc['nombre'] ?>">
            </div>
            
        </div>
        <div class="container-tabla-actividades-curso">
            <table class="tabla-actividades-curso">
                <caption><b>Tabla de Actividades</b></caption>
                <thead>
                    <tr>
                        <th>Curso</th>
                        <th>Mes</th>
                        <th>Tema</th>
                        <th>SubTema</th>
                        <th>Actividad</th>
                        <th>Fecha</th>
                        <th>% Proyectado</th>
                        <th>% Ejecutado</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        while($ra = mysqli_fetch_array($q2)) {
                            // Obteniendo datos de la tabla tipo_actividad de la base de datos
                            $query3 = "SELECT * FROM tipo_actividad WHERE id_tipo_actividad = ".$ra['id_tipo_actividad'];
                            $q3 = mysqli_query($link, $query3);
                            $rta = mysqli_fetch_array($q3);
                            $mes = obtenerMes($ra['fecha_inicio']);
                            $fecha = fechaEs($ra['fecha_inicio']);
                    ?>
                        <tr>
                            <td><?= $rc['nombre'] ?></td>
                            <td><?= $mes ?></td>
                            <td><?= $ra['tema'] ?></td>
                            <td><?= $ra['subtema'] ?></td>
                            <td><?= $rta['nombre_tipo'] ?></td>
                            <td><?= $fecha ?></td>
                            <td>52%</td>
                            <td>48%</td>
                            <td>
                                <div class="acciones-btn-actividades">
                                    <button class="edit-activity-btn" alt="Editar Actividad"><i class="fas fa-edit"></i></button>
                                    <button class="delete-activity-btn" alt="Eliminar Actividad"><i class="fas fa-trash"></i></button>
                                </div>          
                            </td>
                        </tr>
                    <?php
                        }
                    ?>
                </tbody>
                <tfoot>
                    <tr>
                        <th scope="row" colspan="6">Total</th>
                        <td>%</td>
                        <td>%</td>
                    </tr>
                </tfoot>
            </table>
        </div>
        <div class="container-grafica">
            <div>
                <canvas id="myChart"></canvas>
            </div>
        </div>
    </div>

    <script>
        const labels = [
            'January',
            'February',
            'March',
            'April',
            'May',
            'June',
        ];

        const data = {
            labels: labels,
            datasets: [{
            label: 'My First dataset',
            backgroundColor: 'rgb(255, 99, 132)',
            borderColor: 'rgb(255, 99, 132)',
            data: [0, 10, 5, 2, 20, 30, 45],
            }]
        };

        const config = {
            type: 'line',
            data: data,
            options: {}
        };

        const myChart = new Chart(
            document.getElementById('myChart'),
            config
        );
    </script>
</body>
</html>