<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Gestion pedidos</h1>
    <?php 
    
    include 'db/conexion.php';
    $consulta = "SELECT * FROM productos";
    $datos = mysqli_query($conexion, $consulta);
    echo '<ul>';
    while($fila = mysqli_fetch_array($datos)){
        echo '<li>'.$fila['nombre_producto'].'</li>';
        
    }
    echo '</ul>';
    ?>

<form method="post" action="ingreso-usuario.php">

<label for="nombre">Nombre</label>
<input required type="text" name="nombre_usuario" id="nombre">

<label for="email">Email</label>
<input required type="email" name="email_usuario" id="email">
<button type="submit">Enviar</button>


</form>

</body>
</html>