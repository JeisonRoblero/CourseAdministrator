<!DOCTYPE html>
<html lang="en">
<head>
   <title>Login | Course Administrator</title>
</head>
<body>
<section>
    <div class="login-page">
        <div class="login-container">
            <div class="titulo-login">
                <h2>Inicio de Sesión</h2>
            </div>

            <form method="post" class="login-form">
                <!-- Input de Correo -->
                <label for="email-input">Ingrese su Correo:</label>
                <input type="email" name="email" required id="email-input" placeholder="Correo electrónico" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,5}"><br>

                <!-- Input de Contraseña -->
                <label for="pass-input">Ingrese su Contraseña:</label>
                <input type="password" name="pass" required id="pass-input" placeholder="Contraseña">

                <!-- Botón Iniciar Sesión -->
                <div class="center-button-login">
                    <button>Iniciar Sesión</button>
                </div>
                
            </form>
        </div>

        <div class="img-login-container">
            <img src="./imagenes/login-img.jpg" alt="Login">
        </div>
    </div>
</section>
</body>
</html>