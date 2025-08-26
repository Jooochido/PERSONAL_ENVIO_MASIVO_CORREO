<?php
    require_once("../../../config/conexion.php");
    session_destroy();
    header("location:".Conectar::ruta()."admin/index.php");
    exit();
?>