<?php

//Paso 1. Credenciales para la conexion de la base de datos
$nombreServidor='localhost';
$usuario='root';
$contraseña='';
$nombreBaseDatos='institutocatec';

//Paso 2. Crear la conexion
$conexion=new mysqli($nombreServidor,$usuario,$contraseña,$nombreBaseDatos);

//Paso 3. Verificacion de la conexion
if($conexion->connect_error){
    die("Conexion fallidad ".$conexion->connect_error);
}

//Paso 4. Obtener los datos del Formulario
$ci=$_POST['ci'];
$nombre=$_POST['nombre'];
$apellido=$_POST['apellido'];
$edad=$_POST['edad'];
$correo=$_POST['correo'];
$carrera=$_POST['carrera'];
$celular=$_POST['celular'];
$fechaNacimiento=$_POST['fechaNacimiento'];


echo $ci;

//Paso 5. Realizar la CONSULTA sql para actualizar al estudiantes

$sql='UPDATE estudiante SET Ci=?, Nombre=?, Apellido=?, Edad=?, Correo=?, Carrera=?, Celular=?, FechaNacimiento=? WHERE Ci=?';
$variacion=$conexion->prepare($sql);
$variacion->bind_param('ississisi',$ci,$nombre,$apellido,$edad,$correo,$carrera,$celular,$fechaNacimiento,$ci);

//Paso 6. Enviar la consulta sql al servidor
if($variacion->execute()){
    header("Location:actualizarEstudiantes.php");
    exit();
}else{
    echo "Error al actulizar al estudiante ";
}

//Paso 7. Cerrar la conexion
$variacion->close();
$conexion->close();

?>
