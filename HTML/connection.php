<?php
$host = "localhost"; /* Host name */
$username = "root"; /* User */
$password = ""; /* Password */
$db = "ecomweb"; /* Database name */
$con = mysqli_connect($host, $username, $password, $db);
// Check connection
if (mysqli_connect_errno())
{
echo "failed to connect: " . mysqli_connect_error();}

?>