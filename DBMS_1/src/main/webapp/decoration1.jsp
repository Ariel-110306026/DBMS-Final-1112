<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Store Page</title>

<style>
	
.button {
  border: none;
  text-align: center;
  display: inline-block;
  font-size: xx-small;
/*  margin: 4px 2px;*/
  transition-duration: 0.4s;
  cursor: pointer;
      position:absolute; 
}

.button1 {
  background-color: mistyrose; 
  color: black; 
  width:400px;
  height: 100px;
  top:0;
}

.button2 {
  background-color: mintcream; 
  color: black; 
  width:50px;
  height: 80px;
  top: 560px;
  left: 500px;
}

.button3 {
  background-color: lightpink; 
  color: black; 
  width:250px;
  height: 560px; 
 left: 130px;
  top: 180px;
}

.button4 {
  background-color: aliceblue; 
  color: black; 
  width:60px;
  height: 390px;
  top: 300px;
}

.button5 {
  background-color: powderblue; 
  color: black; 
  width:70px;
  height: 80px;
  top: 560px;
  left: 430px;
}

.button6 {
  background-color: powderblue; 
  color: black; 
  width:70px;
  height: 340px;
  top: 180px;
  left: 430px;
}

.button7 {
  background-color: powderblue; 
  color: black; 
  width:70px;
  height: 100px;
  left: 430px;
    top:0;
}

.button8 {
  background-color: aliceblue; 
  color: black; 
  width:100px;
  height: 60px;
  left: 430px;
  top: 680px;
}


.dialog{
	width: auto;
}



</style>

<script src="dialog-polyfill.js">
// var dialog=document.querySelector('dialog');
// dialogPolyfill.registerDialog(dialog);

// function showDialog(){
// 	var dia=document.getElementById('this-dialog').showModal();
// }
// function hidethisdialog(){
// 	document.getElementById('this-dialog').close();
// }

// function showDialog2(){
// 	var dia=document.getElementById('this-dialog2').showModal();
// }
// function hidethisdialog2(){
// 	document.getElementById('this-dialog2').close();


// }

// function showDialog3(){
// 	var dia=document.getElementById('this-dialog3').showModal();
// }
// function hidethisdialog3(){
// 	document.getElementById('this-dialog3').close();


// }

// function showDialog4(){
// 	var dia=document.getElementById('this-dialog4').showModal();
// }
// function hidethisdialog4(){
// 	document.getElementById('this-dialog4').close();


// }

// function showDialog5(){
// 	var dia=document.getElementById('this-dialog5').showModal();
// }
// function hidethisdialog5(){
// 	document.getElementById('this-dialog5').close();


// }

// function showDialog6(){
// 	var dia=document.getElementById('this-dialog6').showModal();
// }
// function hidethisdialog6(){
// 	document.getElementById('this-dialog6').close();
// }

</script>

</head>
<body>
	
<!-- <a href="Fridges.html"> -->
	<button class="button button1" onclick="showDialog()">Fridges</button>
	<dialog id ="this-dialog">
	<p>This is the image of the fridges</p>
	<img src="å·æ«.jpeg" width=100px height=100px>
	<br>
	Product info:
	<br> Drinks
	<br>Alcohol
	<br>Frozen food
	<!-- <a href="Fridges.html">
	<button >info</button>
	</a> --><br>
	<button onclick="hidethisdialog()">close</button>
	</dialog>
<!-- </a> -->

<!-- <a href="Cigarette.html"> -->
	<button class="button button2" onclick="showDialog2()">Cigarette</button>
	<dialog id ="this-dialog2">
	<p>this is the information for the product</p>
	<img src="è¸æ¶.png" width=100px height=100px>
	<br>
	<a href="newCigarrette.html">
	<button >info</button>
	</a>
	<button onclick="hidethisdialog2()">close</button>
	</dialog>
<!-- </a> -->


<!-- <a href="Racks.html"> -->
	<button class="button button3" onclick="showDialog3()">Racks</button>
	<dialog id ="this-dialog3">
	<p>this is the information for the product</p>
	<img src="racks.jpg" width=100px height=100px>
	<br>
	<button onclick="hidethisdialog3()">close</button>
	</dialog>
<!-- </a> -->

<!-- <a href="Seats.html"> -->
	<button class="button button4" onclick="showDialog4()">Seats</button>
	<dialog id ="this-dialog4">
	<p>this is the information for the product</p>
	<img src="seats.jpg" width=100px height=100px>
	<br>
	<button onclick="hidethisdialog4()">close</button>
	</dialog>
<!-- </a> -->

<!-- <a href="POS.html"> -->
	<button class="button button5" onclick="showDialog5()">POS</button>
	<dialog id ="this-dialog5">
	<p>this is the information for the product</p>
	<img src="POS.jpg" width=100px height=100px>
	<br>
	<button onclick="hidethisdialog5()">close</button>
	</dialog>
<!-- </a> -->

<!-- <a href="Drinks.html"> -->
	<button class="button button6" onclick="showDialog6()">Drinks</button>
	<dialog id ="this-dialog6">
	<p>this is the information for the product</p>
	<img src="è¸æ¶.png" width=100px height=100px>
	<br>
	<button onclick="hidethisdialog6()">close</button>
	</dialog>
<!-- </a> -->

<!-- <a href="Office.html"> -->
	<button class="button button7" onclick="showDialog7()">Office</button>
	<dialog id ="this-dialog7">
	<p>this is the information for the product</p>
	<img src="è¸æ¶.png" width=100px height=100px>
	<br>
	<button onclick="hidethisdialog7()">close</button>
	</dialog>
<!-- </a> -->

<!-- <a href="Door.html"> -->
	<button class="button button8" onclick="showDialog8()">Door</button>
	<dialog id ="this-dialog8">
	<p>this is the information for the product</p>
	<img src="è¸æ¶.png" width=100px height=100px>
	<br>
	<button onclick="hidethisdialog8()">close</button>
	</dialog>
<!-- </a> -->

</body>
</html>