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
<script type="text/javascript" src="calorieCountTest5.js"></script>
<head>
<nav class="navbar navbar-expand-lg" style="background-color: #C194C9;">
        <a class="navbar-brand" style="font-size:20px; padding-left:10px;"><h2>Fitness King</h2></a>
    <div class="navbar-collapse" id="navbarSupportedContent">
      <ul class="nav nav-pills ms-auto" style="padding-top:0.75%;">
				<li class="nav-item"><a class="nav-link" href="Index.php">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="Exercises.php">Exercises</a></li>
                <li class="nav-item"><a class="nav-link active" style="background-color: #853394; border-color:#853394;" href="">Calorie Counter</a></li>
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
    Calorie Counter
</h2>
<p style="padding-left:1%;padding-top:1%;">Please input the data below to calculate your calorie intake!
<div style="padding-left:1%;">
  <div class="row mb-2">
    <label for="age" class="col-sm-1 col-form-label">Age 15 - 80</label>
    <div class="col-auto">
      <input type="number" step="0.01" class="form-control" value=0 id="age">
    </div>
	</div>
	<div class="row mb-2">
    <label for="weight" class="col-sm-1 col-form-label">Weight (KG)</label>
    <div class="col-auto">
      <input type="number" step="0.01" class="form-control" value=0 id="weight">
    </div>
	<label for="weight2" class="col-sm-1 col-form-label">Weight (Lbs)</label>
    <div class="col-2">
      <input type="number" step="0.01" class="form-control" value=0 id="weight2">
    </div>
	</div>
	<div class="row mb-2">
    <label for="height" class="col-sm-1 col-form-label">Height (CM)</label>
    <div class="col-auto">
      <input type="number" step="0.01" class="form-control" value=0 id="height">
    </div>
	<label for="height2" class="col-sm-1 col-form-label">Height (FEET/INCH)</label>
    <div class="col-1">
      <input type="number" step="1" class="form-control" value=0 id="height2">
    </div>
    <div class="col-1">
      <input type="number" step="1" class="form-control" value=0 id="height3">
    </div>
	</div>
	<div class="row mb-2">
    <label for="gender" class="col-sm-1 col-form-label">Gender</label>
	<div class="col-auto">
    <select id="gender" class="form-select">
      <option value="male">Male</option>
      <option value="female">Female</option>
    </select>
	</div>
	</div>
	<div class="row mb-2">
	<div class="col-1"> 
    <button class="btn btn-primary" style="background-color: #853394; border-color:#853394;" onclick="calculate()">Calculate</button>
	</div>
		<div class="col-auto"> 
    <button class="btn btn-primary" style="background-color: #853394; border-color:#853394;" onclick="calculate2()">Calculate Imperial units</button>
	</div>
	</div>
	<div class="row mb-2">
    <label for="bodymass" class="col-sm-2">Maintenance Calories:</label>
    <div class="col-auto">
      <div id="bodymass"></div>
    </div>
	</div>
</div>
</body>
<footer style="position: fixed; left: 0; bottom: 0; width: 100%; text-align: center;">
    <p>Fitness King © 2023 All Rights Reserved</p>
</footer>
</html>
