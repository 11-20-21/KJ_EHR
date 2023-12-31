<?php
 
 $db = new mysqli("localhost","root","");
   if($db->connect_errno > 0){
         die('Unable to connect to database [' . $db->connect_error . ']');  } 
     
	 $db->query("CREATE DATABASE IF NOT EXISTS `ehr`");
	 
             mysqli_select_db($db,"ehr");  

$table2 = "CREATE TABLE IF NOT EXISTS tbl_users (
  id int(11) NOT NULL auto_increment,
  Firstname varchar(300) NOT NULL,
  Sirname varchar(300) NOT NULL,
  Mtitle Varchar(30) NOT NULL,
  Pic_name Varchar(30) NOT NULL,
  Phone varchar(30) NOT NULL,
  Email varchar(300) NOT NULL,
  Password varchar(300) NOT NULL,
  Role varchar(30) NOT NULL,
  State varchar(30) DEFAULT NULL,

  Online varchar(300) NOT NULL DEFAULT 'Offline',  -- Default value added here
  Time bigint(30) NOT NULL,
  PRIMARY KEY(id)
)";
$db->query($table2);

$table6 = "CREATE TABLE IF NOT EXISTS tbl_drugs (
    id int(11) NOT NULL auto_increment,
    Name varchar(300) NOT NULL,
    DOE varchar(300) NOT NULL,
    Quantity varchar(300) NOT NULL,
    PurchasedPrice varchar(300) NOT NULL,
    RetailPrice varchar(300) NOT NULL,
    Strength varchar(300) NOT NULL,
    Medstype varchar(300) NOT NULL,
    Drugsremain varchar(300) NOT NULL,
    Marker varchar(300) NOT NULL,
    PRIMARY KEY(id)
)";
$db->query($table6);

$table7 = "CREATE TABLE IF NOT EXISTS tbl_vendors (
    id int(11) NOT NULL auto_increment,
    Fullname varchar(300) NOT NULL,
    Drugid varchar(300) NOT NULL,
    Location varchar(300) NOT NULL,
    Phone varchar(300) NOT NULL,
    Email varchar(300) NOT NULL,
    DOP varchar(300) NOT NULL,
    PRIMARY KEY(id)
)";
$db->query($table7);

$table3 = "CREATE TABLE IF NOT EXISTS tbl_petients (
    id int(11) NOT NULL auto_increment,
    Mtitle Varchar(30) NOT NULL,
    Firstname varchar(300) NOT NULL,
    Middlename varchar(300) NOT NULL,
    Sirname varchar(300) NOT NULL,
    Gender Varchar(30) NOT NULL,
    Phone varchar(30) NOT NULL,
    NextKphone varchar(300) NOT NULL,
    DOB varchar(300) NOT NULL,
    Location varchar(300) NOT NULL,
    Relation varchar(300) NOT NULL,
    Guardian varchar(300) NOT NULL,
    Status varchar(300) NOT NULL,
    Status2 varchar(300) NOT NULL,
    Date varchar(300) NOT NULL,
    PRIMARY KEY(id)
)";
$db->query($table3);

$table3 = "CREATE TABLE IF NOT EXISTS tbl_laboratory (
  id int(11) NOT NULL auto_increment,
  Patientid Varchar(30) NOT NULL,
  Diseased varchar(300) NOT NULL,
  Test_RBS varchar(300) NOT NULL,
  Test_FBS varchar(300) NOT NULL,
  Test_PBS varchar(300) NOT NULL,
  Test_UCT varchar(300) NOT NULL,
  Test_MRDT varchar(300) NOT NULL,
  Test_FBC varchar(300) NOT NULL,
  Test_TFT varchar(300) NOT NULL,
  Test_LFT varchar(300) NOT NULL,
  Patient_Complaint varchar(300) NOT NULL,
  Patient_Story varchar(300) NOT NULL,
  Test_comment TEXT NOT NULL,  -- Change from LONGTEXT to TEXT
  Results varchar(300) NOT NULL,
  Officer varchar(300) NOT NULL,
  Date Varchar(30) NOT NULL,
  Status Varchar(30) NOT NULL,
  PRIMARY KEY(id)
)";
$db->query($table3);

$table3 = "CREATE TABLE IF NOT EXISTS tbl_labresults (
  id int(11) NOT NULL auto_increment,
  Patientid Varchar(30) NOT NULL,
  Testid Varchar(30) NOT NULL,
  Status Varchar(30) NOT NULL,
  Test_FBS TEXT NOT NULL,  -- Change from LONGTEXT to TEXT
  FBS_Comment TEXT NOT NULL,  -- Change from LONGTEXT to TEXT
  Test_RBS TEXT NOT NULL,  -- Change from LONGTEXT to TEXT
  RBS_Comment TEXT NOT NULL,  -- Change from LONGTEXT to TEXT
  Test_UCT TEXT NOT NULL,  -- Change from LONGTEXT to TEXT
  UCT_Comment TEXT NOT NULL,  -- Change from LONGTEXT to TEXT
  Test_PBS TEXT NOT NULL,  -- Change from LONGTEXT to TEXT
  PBS_Comment TEXT NOT NULL,  -- Change from LONGTEXT to TEXT
  Test_MRDT TEXT NOT NULL,  -- Change from LONGTEXT to TEXT
  MRDT_Comment TEXT NOT NULL,  -- Change from LONGTEXT to TEXT
  Test_FBC TEXT NOT NULL,  -- Change from LONGTEXT to TEXT
  FBC_Comment TEXT NOT NULL,  -- Change from LONGTEXT to TEXT
  Test_TFT TEXT NOT NULL,  -- Change from LONGTEXT to TEXT
  TFT_Comment TEXT NOT NULL,  -- Change from LONGTEXT to TEXT
  Test_LFT TEXT NOT NULL,  -- Change from LONGTEXT to TEXT
  LFT_Comment TEXT NOT NULL,  -- Change from LONGTEXT to TEXT
  Officer varchar(300) NOT NULL,
  Date Varchar(30) NOT NULL,
  PRIMARY KEY(id)
)";
$db->query($table3);
                                                 
$table3 = "CREATE TABLE IF NOT EXISTS tbl_treatment (
  id int(11) NOT NULL auto_increment,
  Resultsid varchar(300) NOT NULL,
  Patientid Varchar(30) NOT NULL,
  Drugid varchar(300) NOT NULL,
  Quantity varchar(300) NOT NULL,
  Timesperday varchar(300) NOT NULL,
  Days varchar(300) NOT NULL,
  Amount varchar(300) NOT NULL,
  Prescribe_Comment TEXT NOT NULL,
  Date Varchar(30) NOT NULL,
  Officer varchar(300) NOT NULL,
  Status varchar(300) NOT NULL,
  Progress varchar(300) NOT NULL,
  PRIMARY KEY(id)
)";
$db->query($table3);

$table3 = "CREATE TABLE IF NOT EXISTS tbl_managementplan (
  id int(11) NOT NULL auto_increment,
  Resultsid varchar(300) NOT NULL,
  Patientid Varchar(30) NOT NULL,
  Management_plan TEXT NOT NULL,
  Date Varchar(30) NOT NULL,
  Status varchar(300) NOT NULL,
  Plan varchar(300) NOT NULL,
  PRIMARY KEY(id)
)";
$db->query($table3);

$table3 = "CREATE TABLE IF NOT EXISTS tbl_icd10 (
  id int(11) NOT NULL auto_increment,
  Diagnosisname varchar(300) NOT NULL,
  Diagnosiscode Varchar(30) NOT NULL,
  PRIMARY KEY(id)
)";
$db->query($table3);

$table9 = "CREATE TABLE IF NOT EXISTS tbl_userlogs (
  id int(11) NOT NULL auto_increment,
  Userid varchar(300) NOT NULL,
  Machineip varchar(300) NOT NULL,
  Login varchar(300) NOT NULL,
  Logout varchar(300) NOT NULL,
  Activities varchar(300) NOT NULL,
  Count varchar(300) NOT NULL,
  PRIMARY KEY(id)
)";
$db->query($table9);

$table3 = "CREATE TABLE IF NOT EXISTS tbl_userprivilages (
  id int(11) NOT NULL auto_increment,
  Userid Varchar(30) NOT NULL,
  Adduser varchar(300) NOT NULL,
  Manageuser varchar(300) NOT NULL,
  Logactivities varchar(300) NOT NULL,
  Addpatient varchar(300) NOT NULL,
  Editpatient varchar(300) NOT NULL,
  Managepatient varchar(300) NOT NULL,
  Consultation varchar(300) NOT NULL,
  Labaccess varchar(300) NOT NULL,
  Accountaccess varchar(300) NOT NULL,
  Givedrugs varchar(300) NOT NULL,
  Adddrugs varchar(300) NOT NULL,
  Managedrugs Varchar(30) NOT NULL,
  Todayssales varchar(300) NOT NULL,
  Todaystreat varchar(300) NOT NULL,
  Monthlyreport Varchar(30) NOT NULL,
  PRIMARY KEY(id)
)";
$db->query($table3);

$table3 = "CREATE TABLE IF NOT EXISTS tbl_readings (
  id int(11) NOT NULL auto_increment,
  Patientid Varchar(30) NOT NULL,
  Date Varchar(300) NOT NULL,
  Time Varchar(300) NOT NULL,
  BodyT varchar(300) NOT NULL,
  PulseRate varchar(300) NOT NULL,
  RespirationRate varchar(300) NOT NULL,
  SystolicBP varchar(300) NOT NULL,
  DiastolicBP varchar(300) NOT NULL,
  Oxygensaturation varchar(300) NOT NULL,
  PRIMARY KEY(id)
)";
$db->query($table3);

$tableZ = "CREATE TABLE IF NOT EXISTS Excelfiles (
  id int(11) NOT NULL auto_increment,
  ids varchar(30) NOT NULL,
  PaymentP varchar(30) NOT NULL,
  name varchar(1000) NOT NULL,
  type varchar(30) NOT NULL,
  Size decimal(10) NOT NULL,
  content longtext NOT NULL DEFAULT'',
  PRIMARY KEY(id)
)";
$db->query($tableZ);

$table3 = "CREATE TABLE IF NOT EXISTS tbl_transactions (
  id int(11) NOT NULL auto_increment,
  Patientid Varchar(30) NOT NULL,
  Drugname varchar(300) NOT NULL,
  Quantity varchar(300) NOT NULL,
  Unitprice varchar(300) NOT NULL,
  Days varchar(300) NOT NULL,
  Amount varchar(300) NOT NULL,
  Totalcost varchar(300) NOT NULL,
  Consultation_fee varchar(300) NOT NULL,
  Lab_fee varchar(300) NOT NULL,
  Payment Varchar(300) NOT NULL,
  Scheme_id varchar(300) NOT NULL,
  Date Varchar(300) NOT NULL,
  Time Varchar(300) NOT NULL,
  PRIMARY KEY(id)
)";
$db->query($table3);


error_reporting(E_ALL);
ini_set('display_errors', 1);

// Check for default users
$sqlUsers = "SELECT * FROM tbl_users";
$resultUsers = mysqli_query($db, $sqlUsers);
$rowcountUsers = mysqli_num_rows($resultUsers);

if ($rowcountUsers == 0) {
    // Inserting user records with a default profile picture name
    $enterUser1 = "INSERT INTO tbl_users (Password, Email, Firstname, Sirname, Mtitle, Phone, Role, State, Pic_name, Online, Time) VALUES('1234554321', 'mvumapatrick@gmail.com', 'Patrick', 'Mvuma', 'Mr', '0999107724', 'Medical Doctor', 'Super', 'default_profile.jpg', 'Offline', 0)";
    $db->query($enterUser1) or die(mysqli_error($db));
    echo "User 1 inserted successfully<br>";

    $enterUser2 = "INSERT INTO tbl_users (Password, Email, Firstname, Sirname, Mtitle, Phone, Role, Pic_name, Online, Time) VALUES('12345', 'hmanganda@gmail.com', 'Hendry', 'Manganda', 'Dr', '0888876600', 'Clinician', 'default_profile.jpg', 'Offline', 0)";
    $db->query($enterUser2) or die(mysqli_error($db));
    echo "User 2 inserted successfully<br>";
}

// Check for Excelfiles records
$sqlExcelfiles = "SELECT * FROM Excelfiles";
$resultExcelfiles = mysqli_query($db, $sqlExcelfiles);
$rowcountExcelfiles = mysqli_num_rows($resultExcelfiles);

if ($rowcountExcelfiles == 0) {
    // Inserting Excelfiles records if they don't exist
    $enterExcel1 = "INSERT INTO Excelfiles (ids, PaymentP, name, type, Size, content) VALUES ('1', 'Administrator.php', 'teachers.csv', 'application/vnd.ms-excel', '76', 'Sample content')";
    $db->query($enterExcel1) or die(mysqli_error($db));
    echo "Excel 1 inserted successfully<br>";

    $enterExcel2 = "INSERT INTO Excelfiles (ids, PaymentP, name, type, Size) VALUES ('1', 'Administrator.php', 'students.csv', 'application/vnd.ms-excel', '76')";
    $db->query($enterExcel2) or die(mysqli_error($db));
    echo "Excel 2 inserted successfully<br>";
}

?>