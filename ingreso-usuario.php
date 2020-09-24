<?php 

//recoger datos del form
//insertar en la DB

var_dump($_POST);
$nombre_usuario = $_POST['nombre_usuario'];
$email_usuario = $_POST['email_usuario'];

include 'db/conexion.php';
$consulta = "INSERT INTO usuarios VALUES (NULL, 'Paco','paco@gmail.com');
"

?>