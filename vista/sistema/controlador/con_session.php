<?php

include '../modelo/mod_conex.php';

//Recibe los datos y lo almacena en una variable
$nombre = $_POST["nombre"];
$apellido = $_POST["apellido"];
$correo = $_POST["correo"];
$usuario = $_POST["usuario"];
$password = $_POST["password"];
$telefono = $_POST["telefono"];

//Consulta para Insertar
$insertar = "INSERT INTO usuario(nombre, apellido, correo, usuario, password, telefono) VALUES ('$nombre', '$apellido', '$correo', '$usuario', md5('$password'), '$telefono')";

//Impedir Duplicado
$verificar_usuario = mysqli_query($conexion, "SELECT * FROM usuario WHERE usuario = '$usuario'");
if(mysqli_num_rows($verificar_usuario) > 0){
    echo "<script>

            alert('El usuario ya Existe');
            window.history.go(-1);

    </script>";
    exit;
}

$verificar_correo = mysqli_query($conexion, "SELECT * FROM usuario WHERE correo = '$correo'");
if(mysqli_num_rows($verificar_correo) > 0){
    echo "<script>

            alert('El Correo ya Existe');
            window.history.go(-1);

    </script>";
    exit;
}

//Ejecutar Consulta
$resultado = mysqli_query($conexion, $insertar);
if(!$resultado){
    echo "Error al registrarse";
} else {
    echo "<script>

            alert('Registrado Exitosamente');
            window.history.go(-1);

    </script>";
}

//Cerrar Conexion
mysqli_close($conexion);

?>
