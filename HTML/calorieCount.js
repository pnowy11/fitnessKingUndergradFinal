function calculate(){
var A = document.getElementById("age").value;
var W = document.getElementById("weight").value;
var H = document.getElementById("height").value;
var gender = document.getElementById("gender").value;
	if (gender == "male"){
		var BM = (13.397 * W) + (4.799 * H) - (5.677 * A) + 88.362;
		}
		else{
		var BM = (9.247 * W) + (3.098 * H) - (4.330 * A) + 447.593;
		}
	var BMR = BM * 1.2;
	document.getElementById('bodymass').innerHTML = BMR;
}