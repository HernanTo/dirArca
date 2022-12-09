<?php
    class file{
        public function store($name, $trimestre, $local, $cloud){
            include('./data_conexion.php');
            switch ($trimestre) {
                case '1':
                    $carpeta = 'trimI';
                    break;
                    case '2':
                        $carpeta = 'trimII';
                        break;
                        case '3':
                            $carpeta = 'trimIII';
                            break;
                            case '4':
                                $carpeta = 'trimIV';
                                break;
                                case '5':
                                    $carpeta = 'trimV';
                                    break;
                                    case '6':
                                        $carpeta = 'trimVI';
                                        break;
                
            }
            $folder='./assets/entregables/' . $carpeta;
            $fileName = $local['name'];
            $typeFile = $local['type'];
			$sizeFile = $local['size'];
			$filefinal= $fileName;
            $urlLocal = $folder . '/'. $filefinal;
            if(move_uploaded_file($local['tmp_name'],$folder.'/'.$filefinal)){
                $sql = "INSERT INTO files(name_file, trimestre, url_local, url_cloud) VALUES ('$name','$trimestre','$urlLocal','$cloud')";
                mysqli_query($db, $sql);
                header('Location: files.html');
            }
        }
    }
    $file = new file;
    $file->store($_POST['name-file'], $_POST['trim'], $_FILES['file'], $_POST['cloud']);
?>