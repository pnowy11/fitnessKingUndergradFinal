<?php
session_start();
include "config.php";
@$username = $_SESSION["username"];
$sql = "SELECT * FROM users WHERE username = '". $username . "' ";
$result = mysqli_query($con, $sql);
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
        <li class="nav-item"><a class="nav-link active" style="background-color: #853394; border-color:#853394;" href="" class="user">
            Welcome, <?php if(isset($_SESSION['username'])){echo $_SESSION['username'];}
                else echo "User"?>
        </div></a></li>
		
    </div>
</nav>
</head>
<body>
<br>
<?php 
if(mysqli_num_rows($result) > 0){
while ($row=mysqli_fetch_assoc($result)){
echo "
	<div class='col-3'><h2 style='padding-left:2%;padding-top:1%;'>Account Details</h2></div> 
	<div style='padding-left:2%;'>
	<div class='row justify-content-left mb-2'>
	<label for='age' class='col-sm-1 col-form-label'>Age</label>
	<div class='col-auto'><input class='form-control' type='number' id='age' value = '". $row["age"]."' readonly></div>
	<div class='col-auto'><button class='btn btn-primary' onclick='calculate()' style='background-color: #853394; border-color:#853394;'> Maintain </button></div></div>
	<div class='row justify-content-left mb-2'>
	<label for='weight' class='col-sm-1 col-form-label'>Weight</label>
	<div class='col-auto'><input class='form-control' type='number' id='weight' value = '". $row["weightkg"]."' readonly></div>
	<div class='col-auto'><button class='btn btn-primary' onclick='calculate4()' style='background-color: #853394; border-color:#853394;'>Lose weight</button></div></div>
	<div class='row justify-content-left mb-2'>
	<label for='height' class='col-sm-1 col-form-label'>Height</label>
	<div class='col-auto'><input class='form-control' type='number' id='height' value = '". $row["heightcm"]."' readonly></div>
	<div class='col-auto'><button class='btn btn-primary' onclick='calculate3()' style='background-color: #853394; border-color:#853394;'>Gain weight</button></div></div>
	<div class='row justify-content-left mb-2'>
	<label for='gender' class='col-sm-1 col-form-label'>Gender</label>
	<div class='col-auto'><input class='form-control' id='gender' value = '". $row["gender"]."' readonly></div>
	</div><br>

	<div class='col-3'><h2 style='padding-left:2%;padding-top:1%;'>Target</h2></div> 
	<div style='padding-left:2%;'> 
	<div class='row justify-content-left'>
	<div class='col-auto'><h3 id='bodymass'></h3></div> 
	</div></div><br>
	
	<div class='row mb-2'>
	<div class='col-4'><h2 style='padding-left:2%;padding-top:1%;'>Calorie Journal</h2></div>
	<div class='col-3'><h2 style='padding-left:2%;padding-top:1%;'>Journal Total Calories</h2></div> 
	</div>
	<div style='padding-left:2%;'> 
	<div class='row justify-content-left mb-2'>
	<label for='calories' class='col-sm-1 col-form-label'>Food 1</label>
	<div class='col-auto'>
	<input class='form-control' placeholder = 'name'></div><div class='col-auto'>
	<input type='number' step='0.01' class='form-control' id='calories'></div>
	<div class='col-auto'><h3 id='total'></h3></div> 
	</div>
	<div class='row justify-content-left mb-2'>
	<label for='calories2' class='col-sm-1 col-form-label'>Food 2</label>
	<div class='col-auto'>
	<input class='form-control' placeholder = 'name'></div><div class='col-auto'>
	<input type='number' step='0.01' class='form-control' id='calories2'></div>
	</div>
	<div class='row justify-content-left mb-2'>
	<label for='calories3' class='col-sm-1 col-form-label'>Food 3</label>
	<div class='col-auto'>
	<input class='form-control' placeholder = 'name'></div><div class='col-auto'>
	<input type='number' step='0.01' class='form-control' id='calories3'></div>
	</div>
	<div class='row justify-content-left mb-2'>
	<label for='calories4' class='col-sm-1 col-form-label'>Food 4</label>
	<div class='col-auto'>
	<input class='form-control' placeholder = 'name'></div><div class='col-auto'>
	<input type='number' step='0.01' class='form-control' id='calories4'></div>
	</div>
	<div class='row justify-content-left mb-2'>
	<label for='calories5' class='col-sm-1 col-form-label'>Food 5</label>
	<div class='col-auto'>
	<input class='form-control' placeholder = 'name'></div><div class='col-auto'>
	<input type='number' step='0.01' class='form-control' id='calories5'></div>
	</div>
	<div class='row justify-content-left mb-2'>
	<div class='col-2 offset-1'><button class='btn btn-primary' onclick='count()' style='background-color: #853394; border-color:#853394;'> Count Total Food Calories </button></div></div>"
;}
}
			else 
				echo "<center><h2>Please Login to use be able to check your account!</h2><br><button class='btn btn-primary' style='background-color: #853394; border-color:#853394;' onclick=document.location='Login.php'>Login</button></center>";
?>
</body>
<footer style="position: relative; left: 0; bottom: 0; width: 100%; text-align: center;">
    <p>Fitness King © 2023 All Rights Reserved</p>
</footer>
</html>
