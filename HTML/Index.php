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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<head>
<nav class="navbar navbar-expand-lg" style="background-color: #C194C9;">
    <a class="navbar-brand" style="font-size:20px; padding-left:10px;"><h2>Fitness King</h2></a>
    <div class="navbar-collapse" id="navbarSupportedContent">
      <ul class="nav nav-pills ms-auto" style="padding-top:0.75%;">
				<li class="nav-item"><a class="nav-link active" style="background-color: #853394; border-color:#853394;" href="">Home</a></li>
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
<h2 style="padding-left:1%;padding-top:1%;">
    Welcome to Fitness King!
</h2>
<br>
<body>
<div style="padding-left:10px">

<div class="container">
<div class="row">
    <div class="col-5 " style="color: white; background-color: #9f79a5;font-size: 20">
	<h2>Why Fitness King?</h2>
      <p>Fitness King is a great alternative to other fitness websites as it encompasses what the others do whilst expanding on it and providing better measures. Fitness king supports health and fitness of the highest calibre allowing people of all fitness levels to use the services provided.</p>
    </div>
    <div class="col-5 offset-2" style="color: white; background-color: #9f79a5;font-size: 20">
	<h2>What can you do?</h2>
      <p>On Fitness King you can calculate your calorie intake depending on your weight, height and gender so you can accurately gauge how much to eat for a body maintenance level. Alternatively you can also view many exercise videos depending on different muscle groups and what you want to work out.</p>
    </div>
</div>
</div>
<br>
<div class="row">
<div class="col-3 offset-2" style="font-size:20px">
Want to lose weight? Build muscle? 
live healthier and feel better about yourself?
Get starter with placeholder name for free!
<br><br>
<button class='btn btn-primary' style="background-color: #853394; border-color:#853394;" onclick=document.location='Login.php'>Get started for free!</button>
    </div>
<div class="col-3 offset-2" style="color: white; background-color: #9f79a5; font-size: 20">
      <h2>Anywhere, at anytime</h2>
	  <p>You can also use Fitness King on your smartphone with the mobile website. Or alternatively you can also go on the google play store or app store to download the Fitness King app</p>
    </div>
</div>
</div>
<br>
<div class="row">
<div class="col-auto offset-7">
<button class='btn btn-primary' style="background-color: #853394; border-color:#853394;" onclick="window.location.href='https://www.apple.com/uk/app-store/';">App Store</button>
</div>
<div class="col-auto">
<button class='btn btn-primary' style="background-color: #853394; border-color:#853394;" onclick="window.location.href='https://play.google.com/store/games';">Google Play</button>
</div>
</div>
</body>
<footer style="position: fixed; left: 0; bottom: 0; width: 100%; text-align: center;">
    <p>Fitness King © 2023 All Rights Reserved</p>
</footer>
</html>
