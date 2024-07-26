<?php
    //Paso 1. Establecer las variables para la conexion a la base de datos - Credenciales
    $nombreServidor="localhost";
    $usuario="root";
    $contraseña="";
    $nombreBaseDatos="institutocatec";

    //Paso 2. Crear la conexion
    $conexion=new mysqli($nombreServidor,$usuario,$contraseña,$nombreBaseDatos);

    //Paso 3. Verificar la conexion
    if($conexion->connect_error){
        die ("Conexion Fallida ". $conexion->connect_error);
    }
    //Obtener el Ci del estudiantes
    $ci=$_GET['ci'];

    //Paso 4. Crear la consulta SQL - OBTENER ESTUDIANTES
    $sql = "SELECT * FROM estudiante WHERE Ci=?";
    $variacion=$conexion->prepare($sql);
    $variacion->bind_param("i",$ci);
    $variacion->execute();
    
    //Paso 5. Obtener los resultados
    $resultado=$variacion->get_result();
    $resultadoEstudiante=$resultado->fetch_assoc();
    //Paso 6. Converir el formato JSON para mostrar los datos
    header('Content-Type: application/json');
    echo json_encode($resultadoEstudiante);
?>