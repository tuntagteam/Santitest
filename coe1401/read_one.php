<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Credentials: true");
header('Content-Type: application/json');
  
// include database and object files
include_once '../config/database.php';
include_once '../objects/coe1401.php';
  
// get database connection
$database = new Database();
$db = $database->getConnection();
  
// prepare product object
$coe1401 = new coe1401($db);
  
// set ID property of record to read
$coe1401->id = isset($_GET['id']) ? $_GET['id'] : die();
  
// read the details of product to be edited
$coe1401->readOne();
  
if($coe1401->name!=null){
    // create array
    $coe1401_arr = array(
        "id" =>  $coe1401->id,
        "name" => $coe1401->name,
        "phone" => $coe1401->phone,
        "email" => $coe1401->email,
        "country" => $coe1401->country,
        "region" => $coe1401->region
  
    );
  
    // set response code - 200 OK
    http_response_code(200);
  
    // make it json format
    echo json_encode($coe1401_arr);
}
  
else{
    // set response code - 404 Not found
    http_response_code(404);
  
    // tell the user product does not exist
    echo json_encode(array("message" => "Data does not exist."));
}
?>