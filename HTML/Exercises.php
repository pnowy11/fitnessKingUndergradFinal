<?php
session_start();
include "config.php";
$sqlarms = "SELECT * FROM exercises WHERE type = 'arms'";
$sqlchest = "SELECT * FROM exercises WHERE type = 'chest'";
$sqlback = "SELECT * FROM exercises WHERE type = 'back'";
$sqlshoulders = "SELECT * FROM exercises WHERE type = 'shoulders'";
$sqlcore = "SELECT * FROM exercises WHERE type = 'core'";
$sqllegs = "SELECT * FROM exercises WHERE type = 'legs'";
$resultarms = mysqli_query($con, $sqlarms);
$resultchest = mysqli_query($con, $sqlchest);
$resultback = mysqli_query($con, $sqlback);
$resultshoulders = mysqli_query($con, $sqlshoulders);
$resultcore = mysqli_query($con, $sqlcore);
$resultlegs = mysqli_query($con, $sqllegs);
if(isset($_GET['Logout'])){
    session_destroy();
    header('Location: index.php');
}
?>
<html>
<title>Exercises</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<head>
<nav class="navbar navbar-expand-lg" style="background-color: #C194C9;">
    <a class="navbar-brand" style="font-size:20px; padding-left:10px;"><h2>Fitness King</h2></a>
    <div class="navbar-collapse" id="navbarSupportedContent">
      <ul class="nav nav-pills ms-auto" style="padding-top:0.75%">
				<li class="nav-item"><a class="nav-link" href="Index.php">Home</a></li>
				<li class="nav-item"><a class="nav-link active" style="background-color: #853394; border-color:#853394;" aria-current="page" href="">Exercises</a></li>
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
    Exercise Categories
</h2>
<br>
<body>
<h2 style="padding-left:1%;padding-top:1%;">
    Arms
</h2>
<div class="row offset-1">
<?php
if (mysqli_num_rows($resultarms) > 0){
while ($row=mysqli_fetch_assoc($resultarms)){
echo"<div class='col-auto'><button class='btn btn-primary' style='background-color: #853394; border-color:#853394;' onclick=document.location='ExerciseDetails.php?ID=" . $row["ID"] . "'>" . $row["exercise_name"] ."</button></div>";
}
}


?>
</div>
<h2 style="padding-left:1%;padding-top:1%;">
    Chest
</h2>
<div class="row offset-1">
<?php
if (mysqli_num_rows($resultchest) > 0){
while ($row=mysqli_fetch_assoc($resultchest)){
echo"<div class='col-auto'><button class='btn btn-primary' style='background-color: #853394; border-color:#853394;' onclick=document.location='ExerciseDetails.php?ID=" . $row["ID"] . "'>" . $row["exercise_name"] ."</button></div>";
}
}


?>
</div>
<h2 style="padding-left:1%;padding-top:1%;">
    Back
</h2>
<div class="row offset-1">
<?php
if (mysqli_num_rows($resultback) > 0){
while ($row=mysqli_fetch_assoc($resultback)){
echo"<div class='col-auto'><button class='btn btn-primary' style='background-color: #853394; border-color:#853394;' onclick=document.location='ExerciseDetails.php?ID=" . $row["ID"] . "'>" . $row["exercise_name"] ."</button></div>";
}
}


?>
</div>
<h2 style="padding-left:1%;padding-top:1%;">
    Shoulders
</h2>
<div class="row offset-1">
<?php
if (mysqli_num_rows($resultshoulders) > 0){
while ($row=mysqli_fetch_assoc($resultshoulders)){
echo"<div class='col-auto'><button class='btn btn-primary' style='background-color: #853394; border-color:#853394;' onclick=document.location='ExerciseDetails.php?ID=" . $row["ID"] . "'>" . $row["exercise_name"] ."</button></div>";
}
}


?>
</div>
<h2 style="padding-left:1%;padding-top:1%;">
    Core
</h2>
<div class="row offset-1">
<?php
if (mysqli_num_rows($resultcore) > 0){
while ($row=mysqli_fetch_assoc($resultcore)){
echo"<div class='col-auto'><button class='btn btn-primary' style='background-color: #853394; border-color:#853394;' onclick=document.location='ExerciseDetails.php?ID=" . $row["ID"] . "'>" . $row["exercise_name"] ."</button></div>";
}
}


?>
</div>
<h2 style="padding-left:1%;padding-top:1%;">
    Legs
</h2>
<div class="row offset-1">
<?php
if (mysqli_num_rows($resultlegs) > 0){
while ($row=mysqli_fetch_assoc($resultlegs)){
echo"<div class='col-auto'><button class='btn btn-primary' style='background-color: #853394; border-color:#853394;' onclick=document.location='ExerciseDetails.php?ID=" . $row["ID"] . "'>" . $row["exercise_name"] ."</button></div>";
}
}


?>
</div>
</body>
<footer style="position: fixed; left: 0; bottom: 0; width: 100%; text-align: center;">
    <p>Fitness King © 2023 All Rights Reserved</p>
</footer>
</html>
