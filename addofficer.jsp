<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Accident Spot Detection</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
       <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="home.jsp">Accident Spot Detection</a>
            </div>

           
        </nav>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                 <ul class="nav" id="main-menu">
                   
             <li>
                        <a class="active-menu" href="adminhome.jsp"><i class="fa fa-dashboard " style="font-size:20px;color:black"></i>Admin Home</a>
                    </li>
                    <li>
             			<a href="register.jsp"><i class="fa fa-user" style="font-size:20px;color:white"></i>Add Police</a>
                         </li>
                	<li>
                      <a href="addofficer.jsp"><i class="fa fa-user" style="font-size:20px;color:white"></i>Add Transport Ministry Officer</a>
                      </li>
                       <li>
             			<a href="viewreport1.jsp"><i class="fa fa-user" style="font-size:20px;color:white"></i>View Accident Report</a>
                         </li>
                	<li>
               <li>
                      <a href="home.jsp"><i class="fa fa-sign-out" style="font-size:20px;color:white"></i>Logout</a>
                      </li> 

                  </ul>  

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">Dashboard</h1>
                       

                    </div>
                </div>
              <div class="row">
            <div class="col-md-9 col-sm-9 col-xs-9">
               <div class="panel panel-info" style="margin-left:220px;">
                        <div class="panel-heading">
                           <b>Transport Ministry officer Registration</b>
                        </div>
                        <div class="panel-body">
                            <form action="Register" method="post">
                                        <div class="form-group">
                                            <label>Full Name</label>
                                            <input class="form-control" type="text" placeholder="Name" name="name" required pattern="[a-zA-Z]+">
                                            
                                        </div>
                                     
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input class="form-control" type="email" placeholder="Email" name="email" required/>
                                            
                                        </div>
                                 
                                        <div class="form-group">
                                            <label>Contact Number</label>
                                            <input class="form-control" type="text" placeholder="Contact Number" name="mobile" required pattern="[7-9]{1}[0-9]{9}" MaxLength="10"/>
                                            
                                        </div>
                                        
                                            <div class="form-group">
                                            <label>Address</label>
                                            <textarea class="form-control" rows="3" placeholder="Address" name="address" required="required"></textarea>
                                        </div>
                                  <div class="form-group">
                                            <label>Password</label>
                                            <input class="form-control" placeholder="Password" type="password" name="password" required/>
                                  		 </div>
                                 
                                        <button type="submit" class="btn btn-info">Submit</button>

                                    </form>
                            </div>
                        </div>
                            </div>
                            </div>
                    </div>
                </div>
             </div>
        

    <div id="footer-sec">
        
    </div>
    <!-- /. FOOTER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
       <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    


</body>
</html>
