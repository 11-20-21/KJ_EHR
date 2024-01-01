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

  

<style>
body { 
  background-image: url('img/3.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center; 
  background-size: cover;
}
</style>
</head>
    
<body>

<nav class="navbar " style="background-color:DodgerBlue; margin-bottom:150px; border-bottom:5px solid navy; box-shadow: 0px 3px 25px #151269;">
  <div style="font-size:35px; display:flex; justify-content: center;align-items: center;">
  <img src="img/logo.png" width="130" height="100" alt="">
  <h1 style="padding-left:20px; font-size:45px; text-shadow: 2px 2px red;">KJ Electronic Health Record System</h1>
  </div>

</nav>


	<div class="container-fluid">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="panel panel-primary" >
			<div class="panel-heading" >
				<h1 style="text-align:center;">Login</h1>
			</div>
			<div class="panel-body" style="padding:30px; height:350px;">
				<!-- logn form -->
					 <form class="form-login" method="post" id="login-form">
                                        	<div id="error">
		                                     </div>
                                         
                                        <hr />
		                             <div class="form-group" >
			                           <input type="email" class="form-control" placeholder="Email address" name="user_email" id="user_email" style="font-size:20px;" />
			                             <span id="check-e"></span>
		                             </div>
                                 <br>
		                             <div class="form-group">
			                           <input type="password" class="form-control" placeholder="Password" name="password" id="password" style="font-size:20px;"/>
		                             </div>
		                             <hr />
                                 <br />
		                            <div class="form-group" style="text-align: center;">
			                           <button type="submit" class="btn btn-primary" name="login_button" id="login_button" style="height:50px; width:150px;">
			                             <span class="glyphicon glyphicon-log-in"></span> &nbsp; Sign In
			                           </button> 

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

