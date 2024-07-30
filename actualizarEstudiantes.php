<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Actualizacion</title>
    <style>
        table{
            width: 100%;
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
        .pantalla{
            position: fixed;
            top: 50%;
            left: 50%;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            width: 30%;
            padding: 20px;
            background-color: #fff;
            z-index: 1000;
            transform:translate(-50%,-50%);
            display:none;
        }
        .pantalla-contenido{
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .cerrar{
            cursor: pointer;
            font-size: 20px;
            color: red;
            align-self: flex-end;
        }
    </style>
</head>
<body>
<script>
        function abrirPantalla(ci,nombre,apellido,edad,correo,carrera,celular,fechaNacimiento) {
            document.getElementById("pantalla").style.display="block";
            document.getElementById("ci").value=ci
            document.getElementById("nombre").value=nombre;
            document.getElementById("apellido").value=apellido;
            document.getElementById("edad").value=edad;
            document.getElementById("correo").value=correo;
            document.getElementById("carrera").value=carrera;
            document.getElementById("celular").value=celular;
            document.getElementById("fechaNacimiento").value=fechaNacimiento;
       }

       function eliminarEstudiante(ci){
            if(confirm("¿Estas seguro de que deseas eliminar al estudiante?")){
                var puente=new XMLHttpRequest();
                puente.open("POST","eliminar.php", true);
                puente.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
                puente.onreadystatechange=function(){
                    if(puente.readyState==4 && puente.status==200){
                        alert(puente.responseText);
                        location.reload()
                    }
                };
                puente.send("ci="+ci)
            }
       }
        document.addEventListener('DOMContentLoaded', () => {
            document.querySelector('.cerrar').addEventListener('click', () => {
                document.getElementById("pantalla").style.display = "none";
            });
        });
    </script>
    <h2>Lista de Estudiantes</h2>
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
    //Paso 4. Crear la consulta SQL - OBTENER ESTUDIANTES
    $sql = "SELECT * FROM estudiante ORDER BY Apellido ASC";

    //Paso 5. Obtener los resultados
    $resultado=$conexion->query($sql);

    //Paso 6. Mostrar los resultados en tabla
    if ($resultado->num_rows>0){
        echo "<table>";
        echo "<tr><th>Ci</th><th>Nombre</th><th>Apellido</th><th>Edad</th><th>Correo</th><th>Carrera</th><th>Celular</th><th>Fecha de Nacimiento</th></tr>";
        while($fila=$resultado->fetch_assoc()){
            echo "<tr>
                <td>{$fila['Ci']}</td>
                <td>{$fila['Nombre']}</td>
                <td>{$fila['Apellido']}</td>
                <td>{$fila['Edad']}</td>
                <td>{$fila['Correo']}</td>
                <td>{$fila['Carrera']}</td>
                <td>{$fila['Celular']}</td>
                <td>{$fila['FechaNacimiento']}</td>
                <td><button class='boton-actualizar' 
                    onclick='abrirPantalla(
                    \"{$fila['Ci']}\",
                    \"{$fila['Nombre']}\",
                    \"{$fila['Apellido']}\",
                    \"{$fila['Edad']}\",
                    \"{$fila['Correo']}\",
                    \"{$fila['Carrera']}\",
                    \"{$fila['Celular']}\",
                    \"{$fila['FechaNacimiento']}\")'>Actualizar</button></td>

                <td><button class='boton-eliminar' onclick='eliminarEstudiante( \"{$fila['Ci']}\")'>Eliminar</button></td>
            </tr>";
        }
        echo "</table>";
    
    }else{
        echo "No se encontraron registros";
    }
    
    //Paso 7. Cerrar la conexion
    $conexion->close();
    ?>


    <div class="pantalla" id="pantalla">
        <div class="pantalla-contenido">
            <span class="cerrar">❌</span>

            <h2>Actualizar Estudiante</h2>
            <form method="POST" action="actualizar.php">
                <label for="ci">Ci: </label>
                <input type="number" id="ci" name="ci">
                <br>
                <label for="nombre">Nombre: </label>
                <input type="text" id="nombre" name="nombre">
                <br>
                <label for="apellido">Apellido: </label>
                <input type="text" id="apellido" name="apellido">
                <br>
                <label for="edad">Edad: </label>
                <input type="number" id="edad" name="edad">
                <br>
                <label for="correo">Correo: </label>
                <input type="email" id="correo" name="correo">
                <br>
                <label for="carrera">Carrera: </label>
                <input type="text" id="carrera" name="carrera">
                <br>
                <label for="celular">Celular: </label>
                <input type="number" id="celular" name="celular">
                <br>
                <label for="fechaNacimiento">Fecha de Nacimiento: </label>
                <input type="date" id="fechaNacimiento" name="fechaNacimiento">
                <br>
                <input type="submit" value="Actualizar Estudiante">


            </form>

        </div>

    </div>
</body>
</html>