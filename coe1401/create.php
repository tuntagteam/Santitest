<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
  
// get database connection
include_once '../config/database.php';
  
// instantiate product object
include_once '../objects/coe1401.php';
  
$database = new Database();
$db = $database->getConnection();
  
$coe1401 = new coe1401($db);
  
// get posted data
$data = json_decode(file_get_contents("php://input"));
  
// make sure data is not empty
if(
    !empty($data->name) &&
    !empty($data->phone) &&
    !empty($data->email) &&
    !empty($data->country) &&
    !empty($data->region)
){
  
    // set product property values
    $coe1401->name = $data->name;
    $coe1401->phone = $data->phone;
    $coe1401->email = $data->email;
    $coe1401->country = $data->country;
    $coe1401->region = $data->region;
  
    // create the product
    if($coe1401->create()){
  
        // set response code - 201 created
        http_response_code(201);
  
        // tell the user
        echo json_encode(array("message" => "Data was created."));
    }
  
    // if unable to create the product, tell the user
    else{
  
        // set response code - 503 service unavailable
        http_response_code(503);
  
        // tell the user
        echo json_encode(array("message" => "Unable to create Data."));
    }
}
  
// tell the user data is incomplete
else{
  
    // set response code - 400 bad request
    http_response_code(400);
  
    // tell the user
    echo json_encode(array("message" => "Unable to create Data. Data is incomplete."));
}
?>