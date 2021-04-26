<?php 
include 'registro/registro.php';

header('Access-Control-Allow-Origin: *');
header("Content-type: application/json");
if($_SERVER['REQUEST_METHOD']=='GET'){
    if(isset($_GET['id'])){
        //$query="select * from cotizacion where id=".$_GET['id'];
        $query="select * from ciudad where id_departamento=".$_GET['id'];
        $resultado=metodoGet($query);
        echo json_encode($resultado->fetch(PDO::FETCH_ASSOC));
    }else{
        $query="select * from departamento";
        $resultado=metodoGet($query);
        echo json_encode($resultado->fetchAll()); 
    }
    header("HTTP/1.1 200 OK");
    exit();
}

if($_SERVER['REQUEST_METHOD']=='POST'){

    $_POST = json_decode(file_get_contents('php://input'),true);
    
    $modelo=$_POST['modelo'];
    $nombre=$_POST['nombre'];
    $email=$_POST['email'];
    $telefono=$_POST['telefono'];
    $departamento=$_POST['departamento'];
    $ciudad=$_POST['ciudad'];

    if ($modelo =="" || $modelo==null){
        $respuesta['mensaje']="El campo de modelo esta vacio";
        echo json_encode($respuesta);
        die();
    }else if($nombre =="" || $nombre==null){
        $respuesta['mensaje']="El campo de Nombre completo esta vacio";
        echo json_encode($respuesta);
        die();
    }else if($email =="" || $email==null){
        $respuesta['mensaje']="El campo de Email esta vacio";
        echo json_encode($respuesta);
        die();
        
    }else if(!is_numeric($telefono) || $telefono =="" || $telefono==null){
        $respuesta['mensaje']="El campo de Numero Celular esta vacio o no concuerda con el tipo de dato";
        echo json_encode($respuesta);
        die();
    }else if(strlen($telefono)>10){
        $respuesta['mensaje']="El campo Numero Celular tiene mas de 10 digitos";
        echo json_encode($respuesta);
        die();
    }else if($departamento =="" || $departamento==null){
        $respuesta['mensaje']="El campo de Departamento esta vacio";
        echo json_encode($respuesta);
        die();
    }else if($ciudad =="" || $ciudad==null){
        $respuesta['mensaje']="El campo de Ciudad esta vacio";
        echo json_encode($respuesta);
        die();
        
    }else{

        $query="insert into cotizacion(modelo, nombre, email, telefono, departamento, ciudad) values ('$modelo', '$nombre', '$email', '$telefono', '$departamento', '$ciudad')";
        $queryAutoIncrement="select MAX(id) as id from cotizacion";
        $resultado=metodoPost($query, $queryAutoIncrement);
        $respuesta="Registro exitoso!!";
        $resultado += ['mensaje'=>$respuesta];
        //array_push($resultado['mensaje'], $respuesta);
        echo json_encode($resultado);
        header("HTTP/1.1 200 OK");
        exit();

    }

    
}

header("HTTP/1.1 400 Bad Request");


?>