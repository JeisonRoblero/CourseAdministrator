<!DOCTYPE html>
<html lang="en">
<head>
   <title>Electrónica Digital | Course Administrator</title>
</head>
<body>
    <div class="detalle-curso-container">
        <div class="titulo-curso-detalle">
            <h3>Electrónica Digital</h3>
        </div>
        <div class="separador"></div>
        <div class="descripcion-curso">
            <div class="id-curso">
                <b>Código de Curso:</b> 0215446
            </div>
            <div class="seccion-curso">
                <b>Sección</b> "A"
            </div>
            <div class="creditos-curso">
                <b>Creditos:</b> 35
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
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Electrónica Digital</td>
                        <td>Octubre</td>
                        <td>Transistores</td>
                        <td>Diodos</td>
                        <td>Tarea</td>
                        <td>28/10/2022</td>
                        <td>52%</td>
                        <td>48%</td>
                    </tr>
                    <tr>
                        <td>Electrónica Digital</td>
                        <td>Octubre</td>
                        <td>Transistores</td>
                        <td>Diodos</td>
                        <td>Tarea</td>
                        <td>28/10/2022</td>
                        <td>52%</td>
                        <td>48%</td>
                    </tr>
                    <tr>
                        <td>Electrónica Digital</td>
                        <td>Octubre</td>
                        <td>Transistores</td>
                        <td>Diodos</td>
                        <td>Tarea</td>
                        <td>28/10/2022</td>
                        <td>52%</td>
                        <td>48%</td>
                    </tr>
                    <tr>
                        <td>Electrónica Digital</td>
                        <td>Octubre</td>
                        <td>Transistores</td>
                        <td>Diodos</td>
                        <td>Tarea</td>
                        <td>28/10/2022</td>
                        <td>52%</td>
                        <td>48%</td>
                    </tr>
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