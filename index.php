<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
session_start();
include("db_connect.php");

if (isset($_GET['gs'])) {
    $id = $_GET['gs'];

    // Sanitize the input
    $id = mysqli_real_escape_string($db, $id);

    $query = "SELECT name, type, Size, content FROM Excelfiles WHERE id='$id'";
    $result = mysqli_query($db, $query);

    if (!$result) {
        die('Error in the query: ' . mysqli_error($db));
    }

    // Fetch the row
    $row = mysqli_fetch_array($result);

    if (!$row) {
        die('File not found');
    }

    $name = $row['name'];
    $type = $row['type'];
    $path = 'script/' . $name;
    $size = filesize($path);

    // Set appropriate headers for file download
    header('Content-Description: File Transfer');
    header('Content-Type: application/octet-stream');
    header("Content-Length: " . $size);
    header("Content-Type: " . $type);
    header("Content-Disposition: attachment; filename=\"" . basename($name) . "\"");
    header('Content-Transfer-Encoding: binary');
    header('Expires: 0');
    header('Cache-Control: must-revalidate');

    // Clear output buffer
    ob_clean();
    flush();

    // Read and output the file
    readfile($path);

    // Close database connection
    mysqli_close($db);
    exit;
}
?>

<!DOCTYPE html>
<html>
<head>
	<link rel="icon" type="image/png" sizes="96x96" href="img/favicon.png">
	<title>EMR</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="js/jquery.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

  <script type="text/javascript" src="js/validation.min.js"></script>
<script type="text/javascript" src="js/login.js"></script>

  <link href="admin/css/font-awesome.css" rel="stylesheet"> 

  <link rel="stylesheet" href="assets/css/style.css" />
  <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
  <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css"/>

</head>
    
<body>

<div class="container"> 
<nav class="navbar navbar-inverse" style="margin-top:5px;background-color:white">
    <div class="container-fluid">
     <div class="banner">
<div style="color:red;margin-left:250px;margin-bottom:50px;margin-top:20px;font-size:30px;font-family:Dr Mlombe;">Patrick Mvuma Electronic Medical Records System</div>
                    <center><img src="img/IMG-20160719-WA0007.jpg"  style="position:absolute;margin-top:-5%;border-radius:100%;width:90px"></center>

               </div> 
     
&nbsp;</br>&nbsp;
     </div>
    
    </nav>

  

	<div class="container-fluid">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="panel panel-primary" >
			<div class="panel-heading" >
				<h3 class="panel-title">Please Login</h3>
			</div>
			<div class="panel-body">
				<!-- logn form -->
					 <form class="form-login" method="post" id="login-form">
                                        	<div id="error">
		                                     </div>
                                        <hr />
		
		                             <div class="form-group">
			                           <input type="email" class="form-control" placeholder="Email address" name="user_email" id="user_email" />
			                             <span id="check-e"></span>
		                             </div>
		                             <div class="form-group">
			                           <input type="password" class="form-control" placeholder="Password" name="password" id="password" />
		                             </div>
		                             <hr />
		                            <div class="form-group">
			                           <button type="submit" class="btn btn-primary" name="login_button" id="login_button">
			                             <span class="glyphicon glyphicon-log-in"></span> &nbsp; Sign In
			                           </button> 
			                           <a href='index.php?gs=3' type="submit" class="btn btn-success" name="login_button" id="login_button">
			                             <span class="fa fa-file-pdf-o"></span> &nbsp; User guide
			                           </a>
		                           </div> 
	                                  </form>
				<!-- logn form -->
			</div>
		</div>
		</div>
		<div class="col-md-2"></div>
	</div>

</div>


	 
   <script type="text/javascript" src="assets/js/jquery-3.1.1.min.js"></script>
   <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
   <script type="text/javascript" src="assets/js/login.js"></script>


</body>
</html>	

