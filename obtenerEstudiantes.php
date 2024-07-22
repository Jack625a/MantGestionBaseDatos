<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        table{
            width: 80%;
            border-collapse: collapse;
        }
        table, th, td{
            border: 1px solid black;

        }
        th{
            background-color: goldenrod;
            font-size: 18pt;
            font-weight:bold ;
            text-align: center;
        }
        td{
            text-align: center;
        }
    </style>
</head>
<body>
   <div>
   <form method="POST">
        <label for="carrera">Seleccione la carrera: </label>
        <select id="carrera" name="carrera">
            <option value="Sistemas Informaticos">Sistemas Informaticos</option>
            <option value="Contabilidad">Contabilidad</option>
            <option value="Administracion de empresas">Administracion de empresas</option>
            <option value="Diseño Grafico" >Diseño Grafico</option>
            <option value="Turismo">Turismo</option>
            <option value="Secretariado ejecutivo">Secretariado ejecutivo</option>
            <option value="*">Todos los Estudiantes</option>
        </select>
        <input type="submit" value="Buscar Estudiantes">
    </form>
   </div>
   

<?php
if($_SERVER['REQUEST_METHOD']=="POST"){
    $carreraSeleccionada=$_POST['carrera'];
   
    echo $carreraSeleccionada;
    //Obtener a todos los estudiantes mayores a 25 años
    //Paso 1. Definir las credenciales de conecion
    $nombreServidor="localhost";
    $usuario="root";
    $contraseña="";
    $nombreBaseDatos="institutocatec";

    //Paso 2. Crear Conexion
    $conexion=new mysqli($nombreServidor,$usuario,$contraseña,$nombreBaseDatos);

    //Paso 3. Verificacion de la conexion
    if ($conexion->connect_error){
        die("Conexion fallida ". $conexion->connect_error);
    }
   
    //Paso 4. Realizar la consulta SQL
    $sql="SELECT * FROM estudiante WHERE Carrera=?";
    $sqlS=$conexion->prepare($sql);
    $sqlS->bind_param("s",$carreraSeleccionada);
    $sqlS->execute();
    //Paso 5. Procesar el resultado
    $resultado=$sqlS->get_result();
    //Paso 6. Verificar los resultados
    if ($resultado->num_rows>0){
        echo "<h1>Ej 1. Obtener a todos los estudiantes mayores a 25 años</h1>";
        echo "<table>";
        echo "<tr><th>CI</th><th>Nombre Completo</th><th>Carrera</th></tr>";
        while($fila=$resultado->fetch_assoc()){
            echo "<tr><td>". $fila["Ci"]. "</td><td>". $fila["Nombre"]." ". $fila["Apellido"]. "</td><td>". $fila["Carrera"]."</td></tr>"; 
        }
        echo "</table>";
    }else{
        echo "Sin resultados para la consulta realizada";
    }

    //Paso 7. Cerrar Conexion
    $conexion->close();
}
?>

</body>
</html>
