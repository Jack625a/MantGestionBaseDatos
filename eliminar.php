<?php
    //Paso 1. Obtner el carnet del estudiante a eliminar
    if (isset($_POST['ci'])){
        $ci=$_POST['ci'];
  
    //Paso 2. Establecer las credenciales de la base de datos
    $nombreServidor='localhost';
    $usuario='root';
    $contraseña='';
    $nombreBaseDatos='institutocatec';

    //Paso 3. Crear la conexion
    $conexion=new mysqli($nombreServidor,$usuario,$contraseña,$nombreBaseDatos);

    //Paso 4. Verificar la conexion 
    if ($conexion->connect_error){
        die("Conexion fallida ".$conexion->connect_error);
    }

    //Paso 5. Preparar la consutla SQL PARA eliminar un registro
    $sql="DELETE FROM estudiante WHERE Ci=?";
    $variacion=$conexion->prepare($sql);
    $variacion->bind_param("i",$ci);

    //Paso 6. Ejecutar la consulta sql
    if($variacion->execute()){
        echo "Estudiante eliminado correctamente";
    }else{
        echo "Error al eliminar al estudiante ". $conexion->error;
    }

    //Paso 7. Cerrar la conexion
    $variacion->close();
    $conexion->close();
}else{
    echo "No se encontro el Ci.";
}
?>