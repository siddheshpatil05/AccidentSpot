<?php

require 'dbConnect.php';

$name= $_POST["name"];
$email= $_POST["email"];
$password= $_POST["password"];


   if (!isUserExist($email) == true) {
            
      $sql="INSERT INTO `users` (`id`, `name`,  `email`, `password`) VALUES 
      (NULL, '".$name."', '".$email."', '".$password."');";

         $result = $con->query($sql);

            if(!empty($result)){                            
              $output["message"] = "success";
                print json_encode($output);                            
            }
            else{
                 $output["message"] = "failure";
                 print json_encode($output);
             }
         }
         else{
                 $output["message"] = "user already exist";
                print json_encode($output);
             }
           

     //Method to check if email already exist
    function isUserExist($email)
    {
        require 'dbconnect.php';

        $sql="SELECT id FROM users WHERE email = '".$email."'";

                $result = $con->query($sql);
                
                while($row = $result->fetch_assoc())
                {
                	$output[]=$row;
                }	
                
                if(!empty($output)){
                
                	return true;                
                }
                else{
                	return false;                
                }
    }

?>            