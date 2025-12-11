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
	document.getElementById('bodymass').innerHTML = BMR.toFixed(2)+" Calories";
}
function calculate2(){
var A = document.getElementById("age").value;
var W = document.getElementById("weight2").value;
var H1 = document.getElementById("height2").value;
var H2 = document.getElementById("height3").value;
var gender = document.getElementById("gender").value;
var WKG = W / 2.205;
var HCM = H1 * 30.48;
var HCM2 = H2 * 2.54;
var HM = H1 + H2;
	if (gender == "male"){
		var BM = (13.397 * WKG) + (4.799 * HM) - (5.677 * A) + 88.362;
		}
		else{
		var BM = (9.247 * WKG) + (3.098 * HM) - (4.330 * A) + 447.593;
		}
	var BMR = BM * 1.2;
	document.getElementById('bodymass').innerHTML = BMR.toFixed(2)+" Calories";
}
function calculate3(){
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
	var BMR = BM * 1.4;
	document.getElementById('bodymass').innerHTML = BMR.toFixed(2)+" Calories to gain weight";
}
function calculate4(){
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
	document.getElementById('bodymass').innerHTML = BM.toFixed(2)+" Calories to lose weight";
}
function count(){
	var A = document.getElementById("calories").value;
	var B = document.getElementById("calories2").value;
	var C = document.getElementById("calories3").value;
	var D = document.getElementById("calories4").value;
	var E = document.getElementById("calories5").value;
	var CF = (+A + +B + +C + +D + +E);
	document.getElementById('total').innerHTML = CF+ " Calories Total";
}