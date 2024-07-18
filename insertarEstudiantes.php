<?php
    //PASO 1. Conexion con el Servidor
    //variables en php $nombrevariable
    $nombreServidor='localhost';
    $usuario='root';
    $contraseña='';
    $nombreBaseDatos='institutocatec';
    //P

    //PASO2. CREAR Y ESTABLECER LA CONEXION
    $conexion=new mysqli($nombreServidor,$usuario,$contraseña,$nombreBaseDatos);

    //PASO3. VERIFICAR CONEXION
    if($conexion->connect_error){
        die("Conexion Fallida verifique los datos.".$conexion->connect_error);
    }
    
    //PASO 4. OBTENER LOS DATOS DEL FORMULARIO
    $ci=$_POST['ci'];
    $nombre=$_POST['nombre'];
    $apellido=$_POST['apellido'];
    $edad=$_POST['edad'];
    $correo=$_POST['correo'];
    $carrera=$_POST['carrera'];
    $celular=$_POST['celular'];
    $fechaNacimiento=$_POST['fechaNacimiento'];

    //Paso 5. Crear la consulta SQL
    $sql="INSERT INTO estudiante(Ci,Nombre,Apellido,Edad,Correo,Carrera,Celular,FechaNacimiento) VALUES('$ci','$nombre','$apellido','$edad','$correo','$carrera','$celular','$fechaNacimiento')";

    //PASO 6. Enviar la consulta SQL al servidor
    if($conexion->query($sql)===TRUE){
        echo "Nuevo estudiante registrado correctamente";
    } else{
        echo "Error al registrar";
    }

    //Paso 7. Cerrar la conexion
    $conexion->close();
?>