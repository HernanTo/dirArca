<?php
    class file{
        
        public function index(){
            function show($trim){
                include('./data_conexion.php');
                if($trim == 2){
                    $trim = 1;
                }
                $sql = "SELECT * FROM files WHERE trimestre = $trim";
                $resultado = $db->query($sql);
                while($row = $resultado->fetch_assoc()){
                    ?>
                    <div class="item-dir">
                        <div class="name-file">
                            <p><?php echo $row['name_file'] ?></p>
                        </div>
                        <div class="local">
                            <a href="<?php echo $row['url_local'] ?>"><img src="./assets/icons/home-free-icon-font.svg"" alt=""></a>
                        </div>
                        <div class="cloud">
                            <a href="<?php echo $row['url_cloud'] ?>"><img src="./assets/icons/cloud-share-free-icon-font.svg" alt=""></a>
                        </div>
                    </div>
                    <?php
                }
            }
            include('./data_conexion.php');
            $trimActuales = [5,4,3,1];
            $trimRomanos = ['V','IV','III','I'];
            $iterable = 0;

            foreach($trimActuales as $trim){
                ?>
                        <div class="con-trim">
                            <section class="con-info-trim">
                                <div class="con-title">
                                    <h2>Trimestre <?php echo $trimRomanos[$iterable]?> <?php echo $trim == '1' ? 'y II' : ' ' ?></h2>
                                    <span></span>
                                </div>  
                                <div class="con-task">
                                    <div class="head-task">
                                        <h3>Entregables</h3>
                                    </div>
                                    <div class="body-task">
                                        <?php
                                            $trimii = $trim == 1 ? 'Trimestre = 2' : 'False';
                                            $sql = "SELECT * FROM entregables WHERE Trimestre = $trim OR $trimii";
                                            $resultado = $db->query($sql);
                                            while($row = $resultado->fetch_assoc()){
                                                ?>
                                                    <p><?php echo $row['entregable'] ?></p> 
                                                <?php
                                            }
                                        ?>
                                    </div>
                                </div>
                            </section>
                            <section class="con-table">
                                <div class="table-dir">

                                    <div class="head-table-dir">
                                        <div class="h-item-dir">
                                            <div class="name-file">
                                                <p>Nombre</p>
                                            </div>
                                            <div class="local">
                                                <p>Local</p>
                                            </div>
                                            <div class="cloud">
                                                <p>Nube</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="body-table-dir">
                                        <?php show($trim) ?>
                                    </div>
                                </div>
                            </section>
                        </div>


                <?php
                $iterable = $iterable + 1;
            }
        }
    }
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Directorio | Arca</title>
    <link href="./bootstrap/bootstrap.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="./assets/icons/logo.svg">
    <link rel="stylesheet" href="./css/style.css">
</head>
<body>
    <div class="container-dir">
        <div class="header-container">
            <img src="./assets/icons/logoW.svg" alt="">
        </div>

        <!-- <div class="con-trim">
            <section class="con-info-trim">
                <div class="con-title">
                    <h2>Trimestre V</h2>
                    <span></span>
                </div>  
                <div class="con-task">
                    <div class="head-task">
                        <h3>Entregables</h3>
                    </div>
                    <div class="body-task">
                        <p>Cuadro comparativo - Proveedores</p>
                        <p>Contrato de Desarrollo de Software</p>
                        <p>Documentación de las Pruebas</p>
                    </div>
                </div>
            </section>
            <section class="con-table">
                <div class="table-dir">

                    <div class="head-table-dir">
                        <div class="h-item-dir">
                            <div class="name-file">
                                <p>Nombre</p>
                            </div>
                            <div class="local">
                                <p>Local</p>
                            </div>
                            <div class="cloud">
                                <p>Nube</p>
                            </div>
                        </div>
                    </div>
                    <div class="body-table-dir">

                        <div class="item-dir">
                            <div class="name-file">
                                <p>Manual Técnico</p>
                            </div>
                            <div class="local">
                                <a href=""><img src="./assets/icons/home-free-icon-font.svg"" alt=""></a>
                            </div>
                            <div class="cloud">
                                <a href=""><img src="./assets/icons/cloud-share-free-icon-font.svg" alt=""></a>
                            </div>
                        </div>
                        <div class="item-dir">
                            <div class="name-file">
                                <p>Manual Técnico</p>
                            </div>
                            <div class="local">
                                <a href=""><img src="./assets/icons/home-free-icon-font.svg"" alt=""></a>
                            </div>
                            <div class="cloud">
                                <a href=""><img src="./assets/icons/cloud-share-free-icon-font.svg" alt=""></a>
                            </div>
                        </div>
                        <div class="item-dir">
                            <div class="name-file">
                                <p>Manual Técnico</p>
                            </div>
                            <div class="local">
                                <a href=""><img src="./assets/icons/home-free-icon-font.svg"" alt=""></a>
                            </div>
                            <div class="cloud">
                                <a href=""><img src="./assets/icons/cloud-share-free-icon-font.svg" alt=""></a>
                            </div>
                        </div>
                        <div class="item-dir">
                            <div class="name-file">
                                <p>Manual Técnico</p>
                            </div>
                            <div class="local">
                                <a href=""><img src="./assets/icons/home-free-icon-font.svg"" alt=""></a>
                            </div>
                            <div class="cloud">
                                <a href=""><img src="./assets/icons/cloud-share-free-icon-font.svg" alt=""></a>
                            </div>
                        </div>
                        <div class="item-dir">
                            <div class="name-file">
                                <p>Manual Técnico</p>
                            </div>
                            <div class="local">
                                <a href=""><img src="./assets/icons/home-free-icon-font.svg"" alt=""></a>
                            </div>
                            <div class="cloud">
                                <a href=""><img src="./assets/icons/cloud-share-free-icon-font.svg" alt=""></a>
                            </div>
                        </div>
                        
                    </div>

                </div>
            </section>
        </div> -->
        <?php
            $file = new file;
            $file->index();
        ?>

    </div>


    <script src="./bootstrap/jquery.js"></script>
    <script src="./bootstrap/bootstrap.bundle.min.js"></script>
</body>
</html>