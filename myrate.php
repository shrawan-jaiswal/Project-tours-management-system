<?php

// include("classes/DBConnection.php");

$localhost = "localhost";
$db = "tourism_db";
$user = "root";
$pass = "";

$conn = new mysqli($localhost,$user,$pass,$db);
if($conn -> connect_error){
    echo "$conn->connect_error";
}else{

$rating = $_POST['rate'];
$review = $_POST['review'];
$pid = $_POST['package_id'];

$sql = "select total_rating, total_raters from packages where id = $pid";
$result = $conn->query($sql);
$row = $result->fetch_assoc();
$a = $row['total_rating']+$rating;
$b = $row['total_raters']+1;
$c = $a/$b;

$sql1 = "Update packages set average_rating = $c, total_rating = $a, total_raters= $b where id = $pid";

if($conn->query($sql1)){
    header('Location:http://localhost/tourism?msg = Rated Successfully');
}else{
    echo "$conn -> connect_error";
}
}

?>