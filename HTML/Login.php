<?php
session_start();
include "config.php";
if(isset($_GET['Logout'])){
    session_destroy();
    header('Location: index.php');
}
?>
<html>
<title>Fitness King</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" id="bootstrap-css">
<head>
<nav class="navbar navbar-expand-lg" style="background-color: #C194C9;">
        <a class="navbar-brand" style="font-size:20px; padding-left:10px;"><h2>Fitness King</h2></a>
    <div class="navbar-collapse" id="navbarSupportedContent">
      <ul class="nav nav-pills ms-auto" style="padding-top:0.75%;">
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
                    echo '<li class="nav-item"><a class="nav-link active" style="background-color: #853394; border-color:#853394;" href="">Login</a></li>';
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

<br>
<body>
</head>
<body>
<div id="login">
    <div class="container">
        <div id="login-row" class="row justify-content-center align-items-center">
            <div id="login-column" class="col-md-6">
                <div id="login-box" class="col-md-12" style= "margin-top: 120px;max-width: 600px;height: 320px;border: 1px solid #9C9C9C;background-color: #EAEAEA;padding: 20px;">
                    <form id="login-form" class="form" action="logindetail.php" method="post">
                        <h3 class="text-center">Login</h3>
                        <div class="form-group">
                            <label for="username">Username:</label><br>
                            <input type="text" name="username" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password:</label><br>
                            <input type="password" name="password" class="form-control" required>
                        </div>
                        <div class="form-group" id="submit">
                            <input type="submit" name="submit" class="btn btn-primary" style="background-color: #853394; border-color:#853394; margin-top: 10px;" value="submit">
                        </div>
                            <p><a href="register.php" class="text-info">Register here</a></p>
                   </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<footer style="position: fixed; left: 0; bottom: 0; width: 100%; text-align: center;">
<p>Fitness King © 2023 All Rights Reserved</p>
</footer>
   
</html>