<?php

require 'dbConnect.php';

if (isset($_POST["email"]) && isset($_POST["password"])) {

                $email= $_POST["email"];
                $password= $_POST["password"];

                $sql="SELECT * from users where email= '".$email."' and password = '".$password."'";

                $result = $con->query($sql);
                
                while($row = $result->fetch_assoc())
                {
                	$output =$row;
                }	
                
                if(!empty($output)){
                
                	$message["message"] = "success";
                	print json_encode($message + $output);                
                }
                else{
                	$message["message"] = "failure";
                	print json_encode($message);                
                }            

            } else {
                $response['message'] = 'Required parameters are not available';
                print json_encode($response);
            }

?>            