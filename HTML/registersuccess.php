<?php
session_start();
include "config.php";
if(isset($_GET['Logout'])){
    session_destroy();
    header('Location: index.php');
}
?>
<html>
<title>FitnessKing</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<head>
<nav class="navbar navbar-expand-lg" style="background-color: #C194C9;">
        <a class="navbar-brand" style="font-size:20px; padding-left:10px;"><h2>Fitness King</h2></a>
    <div class="navbar-collapse" id="navbarSupportedContent">
      <ul class="nav nav-pills ms-auto" style="padding-top:0.75%">
				<li class="nav-item"><a class="nav-link" href="Index.php">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="Exercises.php">Exercises</a></li>
                <li class="nav-item"><a class="nav-link" href="Calories.php">Calorie Counter</a></li>
                <li><?php
                if(!empty($_SESSION["username"]))
                {
                    echo '<li class="nav-item"><a class="nav-link" href="index.php?Logout=" name="Logout" id="Logout">Logout</a></li>';

                }
                else
                {
                    echo '<li class="nav-item"><a class="nav-link" href="login.php">Login</a></li>';
                }
                ?></a></li>
				<!--User details CONTAINER -->
<li class="nav-item"><a class="nav-link" class="user" href="Routines.php">
            Welcome, <?php if(isset($_SESSION['username'])){echo $_SESSION['username'];}
                else echo "User"?>
        </div></a></li>
</nav>
</head>
<body>
<div style='padding-left:1%'>
<center>
<br>
<br>
<br>
<h3>You have successfully registered an account!</h3>
<br>
<h3>You can now log in</h3>
<br>
<button class='btn btn-primary' style='background-color: #853394; border-color:#853394;' onclick=document.location='Login.php'>Login</button>
</center>
</div>
</body>
<footer style="position: fixed; left: 0; bottom: 0; width: 100%; text-align: center;">
    <p>Fitness King © 2023 All Rights Reserved</p>
</footer>
</html>
