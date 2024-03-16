<?php

require_once('dbConnect.php');
 
$sql = "select id,address,latitude,longitude,level,color_code,reason from location";


//$result = mysqli_query($con,$sql);
$result = $con->query($sql);

while($row = $result->fetch_assoc())
{
	$output[]=$row;
}	

if(!empty($output)){
    
     
    $response_data['LocationObject'] = $output; 
    
	print json_encode($response_data);

}
else{
	$output["message"] = "failure";
	print json_encode($output);

}
 
?>
