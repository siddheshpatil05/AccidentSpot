<!DOCTYPE html>
   <%@page import="DBConnection.dbhandler"%>
<%@page import="javabean.*"%>
<%@page import= "java.util.*"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>
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
     <script type="text/javascript">
  function access(){
		<% Object s = request.getSession().getAttribute("msg");
		 if(s!=null){ %>
		alert('<%=s.toString()%>');
		<% request.getSession().setAttribute("msg",null);
		}	%>
	}
  
  </script>
</head>
<body onload="access()">


    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="AdvHome.jsp">Accident Spot Detection</a>
            </div>

           
        </nav>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                   
                    <li>
                        <a class="active-menu" href="AdvHome.jsp"><i class="fa fa-dashboard " style="font-size:20px;color:black"></i>Welcome</a>
                    </li>
                    <li>
             			<a href="AdvRegister.jsp"><i class="fa fa-user" style="font-size:20px;color:white"></i>Add Accident</a>
                         </li>
                          <li>
             			<a href="viewaccident.jsp"><i class="fa fa-user" style="font-size:20px;color:white"></i>View Accident</a>
                         </li>
                         <li>
             			<a href="Frequentcount.jsp"><i class="fa fa-user" style="font-size:20px;color:white"></i>View Frequent Count</a>
                         </li>
                	<li>
                	  <li>
             			<a href="updateaccident.jsp"><i class="fa fa-user" style="font-size:20px;color:white"></i>Update Accident Info</a>
                         </li>
                         <li>
             			<a href="AdvLogin.jsp"><i class="fa fa-user" style="font-size:20px;color:white"></i>Logout</a>
                         </li>
                	
				</ul>
            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">Welcome Police</h1>
                    </div>
                </div>
               <div class="row">
            <div class="col-md-9 col-sm-9 col-xs-9">
               <div class="panel panel-info" style="margin-left:220px;">
                        <div class="panel-heading">
                           <b>Accident Spot Registration</b>
                        </div>
                        <div class="panel-body">
                            <form action="update" method="post">
                                        <div class="form-group">
                                            <label>Id</label>
                                            <input class="form-control" type="text" placeholder="Id" name="id" required/>
                                            
                                        </div>
                                     
                                        <div class="form-group">
                                            <label>Number of Person Killed</label>
                                            <input class="form-control" type="number" placeholder="Number of Person Killed" name="person_killed" required/>
                                            
                                        </div>
                                 
                                        <div class="form-group">
                                            <label>Number of Person Injured</label>
                                            <input class="form-control" type="number" placeholder="Number of Person Injured" name="person_injured" required/>
                                            
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
