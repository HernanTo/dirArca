<?php
    class entregable{
        public function store($entregable, $trim){
            include('./data_conexion.php');
            $sql = "INSERT INTO entregables (entregable, Trimestre) VALUES ('$entregable','$trim')";
            mysqli_query($db, $sql);
            header('Location: files.html');
        }
    }
    $entregable = new entregable;
    $entregable->store($_POST['entregable'], $_POST['trim']);
?>