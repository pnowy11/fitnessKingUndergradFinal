<?php
session_start();
include "config.php";

if(isset($_POST["username"])){
$username = $_POST["username"];
}
if(isset($_POST["email"])){
$email = $_POST["email"];
}
if(isset($_POST["password"])){
$password = $_POST["password"];
}
if(isset($_POST["age"])){
$age = $_POST["age"];
}
if(isset($_POST["weight"])){
$weight = $_POST["weight"];
}
if(isset($_POST["height"])){
$height = $_POST["height"];
}
if(isset($_POST["gender"])){
$gender = $_POST["gender"];
}
$sql = "INSERT INTO users (username,email,password,age,weightkg,heightcm,gender) 
VALUES ('$username','$email','$password','$age','$weight','$height','$gender')";
if (mysqli_query($con, $sql)){
header("Location: registersuccess.php");
}
else{
echo "Error" . mysqli_error($con);
} 
?>