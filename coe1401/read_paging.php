<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
  
// include database and object files
include_once '../config/core.php';
include_once '../shared/utilities.php';
include_once '../config/database.php';
include_once '../objects/coe1401.php';
  
// utilities
$utilities = new Utilities();
  
// instantiate database and product object
$database = new Database();
$db = $database->getConnection();
  
// initialize object
$coe1401 = new coe1401($db);
  
// query products
$stmt = $coe1401->readPaging($from_record_num, $records_per_page);
$num = $stmt->rowCount();
  
// check if more than 0 record found
if($num>0){
  
    // products array
    $coe1401_arr=array();
    $coe1401_arr["records"]=array();
    $coe1401s_arr["paging"]=array();
  
    // retrieve our table contents
    // fetch() is faster than fetchAll()
    // http://stackoverflow.com/questions/2770630/pdofetchall-vs-pdofetch-in-a-loop
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
        // extract row
        // this will make $row['name'] to
        // just $name only
        extract($row);
  
        $coe1401_item=array(
            "id" => $id,
            "name" => $name,
            "phone" => $phone,
            "email" => $email,
            "country" => $country,
            "region" => $region
        );
  
        array_push($coe1401_arr["records"], $coe1401_item);
    }
  
  
    // include paging
    $total_rows=$product->count();
    $page_url="{$home_url}coe1401/read_paging.php?";
    $paging=$utilities->getPaging($page, $total_rows, $records_per_page, $page_url);
    $coe1401_arr["paging"]=$paging;
  
    // set response code - 200 OK
    http_response_code(200);
  
    // make it json format
    echo json_encode($coe1401_arr);
}
  
else{
  
    // set response code - 404 Not found
    http_response_code(404);
  
    // tell the user products does not exist
    echo json_encode(
        array("message" => "No Data found.")
    );
}
?>