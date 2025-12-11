<?php
session_start();
include "config.php";
//not empty
if(isset($_POST["username"])){
$username = $_POST["username"];
}
if(isset($_POST["password"])){
$password = $_POST["password"];
}
//valid
$sql = "SELECT * FROM users WHERE username = '$username' and password = '$password'";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($result);
if(mysqli_num_rows($result) == 1){
$_SESSION["username"] = $username;

header("Location: loginsuccess.php");
}
?>