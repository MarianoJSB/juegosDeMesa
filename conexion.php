<?php
/* Conexión con la DB */
    $server = "localhost";
    $user = "root";
    $password = "";
    $dbName = "juegos_mesa";

    $conexion = mysqli_connect($server, $user, $password, $dbName) or die('ERROR');
?>