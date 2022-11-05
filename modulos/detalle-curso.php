<?php
    // Obteniendo datos de la tabla curso de la base de datos
    $link = conectarBD();
    $query = "SELECT * FROM curso WHERE id_curso = $idCurso";
    $q = mysqli_query($link, $query);
    $rc = mysqli_fetch_array($q);

    // Obteniendo datos de la tabla actividad de la base de datos
    $query2 = "SELECT * FROM actividad WHERE id_curso = $idCurso";
    $q2 = mysqli_query($link, $query2);

    $mostrarMensaje = $_COOKIE["mostrarMensaje"];

    if (isset($success) && $success == 1 && $mostrarMensaje == "true") {
        alertnor("Actividad Agregada Exitosamente!",1);
        setcookie("mostrarMensaje", "false", time() + (86400 * 30), "/");
    }

    if (isset($success) && $success == 2 && $mostrarMensaje == "true") {
        alertnor("Actividad Modificada Exitosamente!",1);
        setcookie("mostrarMensaje", "false", time() + (86400 * 30), "/");
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <title><?= $rc['nombre'] ?> | Course Administrator</title>
</head>
<body>
    <div class="detalle-curso-container">
        
        <div class="descripcion-curso">
            <div class="titulo-curso-detalle" id="titulo-curso-detalle">
                <h3><?= $rc['nombre'] ?></h3>
            </div>
            <div class="separador"></div>
            <div class="descripcion-curso-caption">
                <div class="id-curso">
                    <b>Código de Curso:</b> <?= $rc['id_curso'] ?>
                </div>
                <div class="seccion-curso">
                    <b>Sección:</b> "<?= $rc['seccion'] ?>"
                </div>
                <div class="creditos-curso">
                    <b>Creditos:</b> <?= $rc['creditos'] ?>
                </div>
            </div>
            <div class="fondo-obscuro-desc-curso"></div>
            <div class="fondo-descripcion-curso" id="fondo-descripcion-curso">
                <img src="<?= $rc['imagen'] ?>" alt="<?= $rc['nombre'] ?>" class="imagen-desc-curso" id="imagen-desc-curso">
            </div>      
        </div>
        <div class="container-tabla-actividades-curso">
            <table class="tabla-actividades-curso">
                <div class="header-tabla-actividades">
                    <div></div>
                    <div class="titulo-tabla-actividades"><b>Tabla de Actividades</b></div>
                    <button class="agregar-actividad-btn">
                        <i class="fas fa-plus"></i>
                        <span class="texto-hover-add">Agregar Nueva Actividad</span>
                    </button>
                </div>
                <thead>
                    <tr>
                        <th>Tema</th>
                        <th>Subtema</th>
                        <th>Punteo</th>
                        <th>Fecha de Inicio</th>
                        <th>Fecha de Entrega</th>
                        <th>Mes</th>
                        <th>Actividad</th>
                        <th>Completado</th>
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

                            if ($ra['completado'] == 1) {
                                $completado = "Completado";
                            } else {
                                $completado = "No Completado";
                            }

                            if($ra['punteo'] <= 0) {
                                $punteo = "No Aplica";
                            } else {
                                $punteo = $ra['punteo']." pts";
                            }

                            if ($ra['fecha_entrega'] == "0000-00-00" || $ra['fecha_entrega'] == null) {
                                $fechaEntrega = "No Aplica";
                            } else {
                                $fechaEntrega = $ra['fecha_entrega'];
                            }
                    ?>
                        <tr>
                            <td><?= $ra['tema'] ?></td>
                            <td><?= $ra['subtema'] ?></td>
                            <td><?= $punteo ?></td>
                            <td><?= $ra['fecha_inicio'] ?></td>
                            <td><?= $fechaEntrega ?></td>
                            <td><?= $mes ?></td>
                            <td><?= $rta['nombre_tipo'] ?></td>
                            <td><?= $completado ?></td>
                            <td>  
                                <div class="acciones-btn-actividades">
                                    <button class="edit-activity-btn" alt="Editar Actividad" onclick="editarActividad(`<?= $ra['id_actividad'] ?>`,`<?= $ra['id_tipo_actividad'] ?>`,`<?= $ra['fecha_inicio'] ?>`,`<?= $ra['fecha_entrega'] ?>`,`<?= $ra['fecha_disponible'] ?>`,`<?= $ra['tema'] ?>`,`<?= $ra['subtema'] ?>`,`<?= $ra['descripcion'] ?>`,`<?= $ra['punteo'] ?>`,`<?= $ra['completado'] ?>`,`<?= $ra['id_curso'] ?>`)">
                                        <p class="edit-btn-tag">Editar <?= $rta['nombre_tipo'] ?></p>
                                        <i class="fas fa-edit"></i>
                                    </button>
                                
                                    <button class="delete-activity-btn" alt="Eliminar Actividad" onclick="eliminarActividad(`<?= $ra['id_actividad'] ?>`,`<?= $rta['nombre_tipo'] ?>`,`<?= $ra['tema'] ?>`,`<?= $idCurso ?>`)">
                                        <p class="delete-btn-tag">Eliminar <?= $rta['nombre_tipo'] ?></p>
                                        <i class="fas fa-trash"></i>
                                    </button>
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

        <!-- Formulario de Actividad Agregar y Editar -->
        <div class="actividad-form-container">
            <div class="actividad-form-main">
                <div class="titulo-actividad-form">
                    <h2>Agregar Nueva Actividad</h2>
                    <button class="salir-actividad-form-btn">
                        <i class="fas fa-times"></i>
                    </button>
                </div>
                <div class="linea-divisora"></div>
                <div class="form-container-actividad-main">
                    <form class="actividad-form" id="agregar-actividad-form" method="POST">
                        <input type="hidden" name="id_curso" value="<?= $idCurso ?>" class="nombre-curso-form">
                        <input type="hidden" name="id_actividad" id="id_actividad" value="" class="id_actividad">
                        <br><label for="id_tipo_actividad">Seleccione actividad: </label><br>
                        <select id="id_tipo_actividad" name="id_tipo_actividad" aria-label="Default select" required><br>
                            <?php
                                $query4 = "SELECT * FROM tipo_actividad order by id_tipo_actividad ASC";
                                $q4 = mysqli_query($link, $query4);
                                while ($rta2 = mysqli_fetch_array($q4)) {
                                
                            ?>
                                    <option value="<?= $rta2['id_tipo_actividad'] ?>"><?= $rta2['nombre_tipo'] ?></option>
                            <?php
                                }
                            ?>
                        </select><br>
                        <label for="fecha_inicio">Ingrese la fecha de inicio de la actividad: </label><br>
                        <input type="date" name="fecha_inicio" id="fecha_inicio" placeholder="Fecha de inicio de actividad" required><br>
                        <label for="fecha_entrega">Ingrese la fecha de entrega de la actividad: </label><br>
                        <input type="date" name="fecha_entrega" id="fecha_entrega" placeholder="Fecha de entrega de actividad" required><br>
                        <label for="fecha_disponible">Ingrese la fecha disponible de la actividad: </label><br>
                        <input type="date" name="fecha_disponible" id="fecha_disponible" placeholder="Fecha disponible de actividad" required><br>
                        <label for="tema">Ingrese el tema de la actividad: </label><br>
                        <input type="text" name="tema" id="tema" placeholder="Tema de la actividad" minlength="4" maxlength="100" required><br>
                        <label for="subtema">Ingrese el subtema de la actividad: </label><br>
                        <input type="text" name="subtema" id="subtema" placeholder="Subtema de la actividad" minlength="4" maxlength="100" required><br>
                        <label for="descripcion">Ingrese la descripción de la actividad: </label><br>
                        <textarea style="font-family: 'Poppins', sans-serif;" type="text" name="descripcion" id="descripcion" placeholder="Descripción de la actividad" minlength="4" maxlength="500" required></textarea><br>
                        
                        <label for="punteo">Ingrese el punteo de la actividad:</label><br>
                        <input type="number" name="punteo" id="punteo" placeholder="Punteo de la actividad" pattern="^[0-9]+" minlength="1" maxlength="3" required><br><br>
                        
                        <div class="check-completado-container">
                            <input class="completado-check" type="checkbox" name="completado" value="1" id="completado">
                            <label>Actividad Completada </label>    
                        </div>
                        
                        <button class="actividad-form-submit-btn" type="submit">
                            <i class="fas fa-check-circle"></i>
                            <span>Agregar Actividad</span> 
                        </button><br><br>
                    </form>
                </div>               
            </div>
        </div>
       
        <h2 class="titulo-grafica">Gráfica Estadística</h2>
        <div class="container-grafica">
            <div class="grafico-interno">
                <canvas id="myChart"></canvas>
            </div>
        </div>
    </div>

    <!-- Lógica de Javascript local -->
    <script src="js/app.js"></script>

    <!-- Librería para gráficos -->
    <script src="js/chart.min.js" integrity="sha512-ElRFoEQdI5Ht6kZvyzXhYG9NqjtkmlkfYk0wr6wHxU9JEHakS7UJZNeml5ALk+8IKlU6jDgMabC3vkumRokgJA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

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
            type: 'bar',
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