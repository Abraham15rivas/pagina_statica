<!DOCTYPE html>
<html>
    <head>
        <title>Inicio de Seccion</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, user-scale=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
    </head>
    <body>
        <div class="containerFormulario">
            <div class="contenedor">
                <form action="controlador/con_session.php" method="post" class="formulario" id="formulario">
                    <h2>Registrase</h2>
                    <hr>
                    <div class="datosPrimario">
                        <input type="text" class="nombre" id="nombre" name="nombre" placeholder="Nombre Personal">
                        <input type="text" class="apellido" id="apellido" name="apellido" placeholder="Apellido">
                        <input type="email" class="correo" id="correo" name="correo" placeholder="Correo Electronico">
                        <input type="text" class="usuario" id="usuario" name="usuario" placeholder="Nombre de Usuario">
                        <input type="password" class="password" id="password" name="password" placeholder="Password">
                        <input type="text" class="telefono" id="telefono" name="telefono" placeholder="Numero Telefonico">
                    </div>
                    <div class="enviarFormulario">
                        <input type="submit" class="enviar" id="enviar" name="enviar" value="Registrar Usuario">
                    </div>
                </form>
            </div>
        </div>
        <div class="hora">
            <p>
                <?php
                
                date_default_timezone_set("America/Caracas");
                echo date("h:i:s d-m-y");
                
                ?>
            </p>
        </div>
    </body>
</html>
<style>
    
    *{
        padding: 0px;
        margin: 0px;
        box-sizing: border-box;
    }
    
    .containerFormulario{
        width: 100%;
        height: 100%;
        padding: 10px;
    }
    
    .contenedor{
        width: 100%;
        padding: 10px;
        text-align: center;
    }
    
    .formulario{
        width: 35%;
        margin: auto;
        border: 1px solid black;
        box-shadow: 5px 5px 5px 0px black;
        height: auto;
        padding: 20px;
    }
    
    .formulario > h2{
        margin: 10px auto;
    }
    
    .formulario > hr{
        width: 100%;
        margin: auto;
    }
    
    .datosPrimario{
        width: 100%;
        display: flex;
        flex-wrap: wrap;
        margin: 10px auto;
    }
    
    .nombre{
        width: 100%;
        padding: 10px;
        margin: 10px auto;
    }
    
    .apellido{
        width: 100%;
        padding: 10px;
        margin: 10px auto;
    }
    
    .correo{
        width: 100%;
        padding: 10px;
        margin: 10px auto;
    }
    
    .usuario{
        width: 100%;
        padding: 10px;
        margin: 10px auto;
    }
    
    .password{
        width: 100%;
        padding: 10px;
        margin: 10px auto;
    }

    .telefono{
        width: 100%;
        padding: 10px;
        margin: 10px auto;
    }
    
    .enviarFormulario{
        width: 100%;
        margin: auto;
        padding: 10px;
    }
    
    .enviar{
        width: 100%;
        padding: 10px;
        background-color: #0089ff;
        color: white;
        transition: .5s ease;
    }
    
    .enviar:hover{
        background-color: white;
        color: black;
    }
    
    .hora{
        text-align: left;
        position: absolute;
        bottom: 0;
        margin: auto;
        font-size: 20px;
    }
    
</style>