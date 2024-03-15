   <%@page import="DBConnection.dbhandler"%>
<%@page import="javabean.*"%>
<%@page import= "java.util.*"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>
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
<%! String sql="select address,level, count(address) from location group by address"; %>
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
                                            
                                            <th>Address of Accident</th>
                                            <th>Accident Count</th>
											 <th>Level</th>
                                             
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
eclat e1=new eclat();

System.out.println("Algorithms Running");
System.out.println("Result Generated");
%>

<%
try {

statement = con.createStatement();


resultSet = statement.executeQuery(sql);
while (resultSet.next()) {

%>

<tr >

<td><%=resultSet.getString("address")%></td>
<td><%=resultSet.getString("count(address)")%></td>
<td><%=resultSet.getString("level")%></td>





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
                <!-- /. ROW  -->

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
