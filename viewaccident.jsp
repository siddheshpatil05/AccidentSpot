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
             			<a href="Frequentcount.jsp"><i class="fa fa-user" style="font-size:20px;color:white"></i>Accident Count</a>
                         </li>
                          <li>
             			<a href="updateaccident.jsp"><i class="fa fa-user" style="font-size:20px;color:white"></i>Update Accident</a>
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
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Accident Details
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Address</th>
                                            <th>Reason</th>
                                            <th>Person_Killed</th>
                                            <th>Person_Injured</th>
                                             <th>District</th>
                                             <th>Taluka</th>
                                             <th>Police_Station</th>
                                             
                                        </tr>
                                    </thead>
                                  
                                    <tbody>
                                    <%
/*String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "healthbox1";
String userId = "root";
String password = "123456";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;*/
Connection con=dbhandler.GetConnect();
Statement statement = null;
ResultSet resultSet = null;
%>

<%
try {

statement = con.createStatement();
String sql = "SELECT * FROM location";

resultSet = statement.executeQuery(sql);
while (resultSet.next()) {
%>
<tr >

<td><%=resultSet.getString("id")%></td>
<td><%=resultSet.getString("address")%></td>
<td><%=resultSet.getString("reason")%></td>
<td><%=resultSet.getString("person_killed")%></td>
<td><%=resultSet.getString("person_injured")%></td>
<td><%=resultSet.getString("district")%></td>
<td><%=resultSet.getString("taluka")%></td>
<td><%=resultSet.getString("police_station")%></td>



</tr>

<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>

                                    
                                      </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>
            </div>
            </div>
            </div>
            
                <!-- /. ROW  -->


               
                <!--/.Row-->
               
                <!--/.Row-->
            
    <!-- /. WRAPPER  -->

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
/</html>
