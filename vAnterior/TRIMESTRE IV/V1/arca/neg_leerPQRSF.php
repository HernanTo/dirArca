<?php 
include ('seguridad_admin.php');
$nombrepag = "Módulo de PQRSF.";
$descpag = "Observa y contesta todos los PQRSF de tus usuarios.";
$urlPhoto = $_SESSION["photo"];
?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Ver PQRSF</title>
    <meta
      name="description"
      content="Nació hace más de 13 años como una fundación que solo trabajaba en la rehabilitación integral de personas con discapacidad, pero cuando descubrió su misión en el mundo, decidió dirigir sus esfuerzos hacia la rehabilitación de la sociedad y trabajar por la inclusión social."
    />
    <link rel="shortcut icon" href="./assets/img/icons/logo.svg" />
    <meta
    name="description"
    content="Ingresar al sistema arca, Gestionar citas, resultados, etc"
    />
    <link rel="stylesheet" href="./css/main.css">
    <link rel="stylesheet" href="./css/login.css">
    <link rel="stylesheet" href="./css/table.css">
    <link rel="stylesheet" href="./css/view_tables.css">
  </head>
<body>
<div class="container">
        <?php 
            include("./components/sidebar.php");
            include("./components/navbar.php");
        ?>
        <article class="body_dash">
            <section >
                    
            <?php
    class pqrsf{
        public function leerPQRSF($condicion){
            include ('data_conexion.php');
            $sql = "SELECT NumeroRadicacion , TipoPQRSF , CONCAT(fk_pk_tipo_documentoU, ' ', documento_U, ' ') as 'Documento', CONCAT(pNombre_U, ' ', sNombre_U, ' ', pApellido_U, ' ', sApellido_U) as 'Nombre'  FROM pqrsf 
            inner join tipopqrsf
            on idTipoPQRSF = fk_pk_idTipoPQRSF
            $condicion" ;

            $resultado = $db -> query($sql);
            ?>
            <form action="neg_leerPQRSF.php" method="GET">
                        <select name="filtro" id="filtro" class="filtro">
                            <option value="!= 0232">Todos</option>
                            <option value="= 3">Peticiones</option>
                            <option value="= 1">Quejas</option>
                            <option value="= 4">Reclamos</option>
                            <option value="= 5">Sugerencias</option>
                            <option value="= 2">Felicitaciones</option>
                        </select>
                        <input type="submit" value="Buscar">
                    </form>
            <table>
                <thead>
                    <tr>
                        <th>Número de radicación</th>
                        <th>Tipo de PQRSF</th>
                        <th>Documento del afectado</th>
                        <th>Nombre del afectado</th>
                        <th>Ver más</th>
                    </tr>
                </thead>
            <?php
            while($row = $resultado->fetch_assoc()){
                $NumRadicacion = $row["NumeroRadicacion"];
                $tipo_PQRSF = $row["TipoPQRSF"];
                $documentoPQRSf = $row["Documento"];
                $nombrePQRSF = $row["Nombre"];
                
                echo "<tr>";
                    echo "<td>"; echo $NumRadicacion; echo "</td>";
                    echo "<td>"; echo $tipo_PQRSF; echo "</td>";
                    echo "<td>"; echo $documentoPQRSf; echo "</td>";
                    echo "<td>"; echo $nombrePQRSF; echo "</td>";
                    echo "<td>"; echo "<form name='pqrsf' action='dat_datosPQRSF.php' method='post' required><input name='NumeRadicacion' type='hidden' value='$NumRadicacion'/><input type='submit' value='Ver mas'></form>";
                echo "</tr>";
            }

        echo "</table>";

            }
        }
    $crud = new pqrsf();
    $crud->leerPQRSF(isset($_GET['filtro'])? 'WHERE fk_pk_idTipoPQRSF' . $_GET['filtro'] : 'WHERE TRUE');
        ?>
        </section>
        </article>
    </div>
    
</body>
</html>
