<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>bike demo page</title>
<style>
.header{
	font-weight: bold;
	font-size: 20px;
	font-style: oblique;

	text-align: center;

	width: 100%;
	height: 30px;

}

.preview{width:450px; height:260px; margin-left:100PX; margin-top:150px;}
.thumb{width:105px;margin-right:0px;margin-left:40PX;}
.normal{border:1px solid #cccccc;  margin-left:0pX;}
.selected{border:1px solid red; margin-left:0pX;}
.rate{
	float:right;
	margin-top:30px;
	margin-right:15px;
	

}

.float{float:right;
margin-right:15px;
color:#999999;
margin-top:70px;


	}
	.box{
	text-color:white;
	margin-left:950px;
	margin-bottom:80px;
	
}
.main{border:solid 1px #999999;}
	

</style>
</head>

<body>
<div class="main">
<h2 style="margin-left:50px; padding:10px; font-size:30px">  
   
<span style="margin-bottom:16px">TVS Apache RTR 200 4v</span><span style="font-size:16px; color:#33CC66">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.6</span><span style="font-size:16px; color:#33CC66">
&nbsp;&nbsp;&nbsp;&nbsp;298 Reviews</span><span style="font-size:16px; color:#33CC66">
&nbsp;&nbsp;&nbsp;&nbsp;Rate & Win</span><br /><h3 style="margin-bottom:16px;margin-left:55px; border:solid 1px #999999; border-left:0px;
border-top:0px;border-right:0px; border-width:3px; border-bottom-color:#FF0000; height:20px; width:80px;">Overview</h3></h2><hr />
<div class="float">
<span>key space</span>
<span>&nbsp;&nbsp;&nbsp;&nbsp;<img src="cc.svg" height="15"; width="15";/>197.75cc</span>
<span>&nbsp;&nbsp;&nbsp;&nbsp;<img src="bhp.svg" height="15"; width="15";/>20.7bhp</span>
<span>&nbsp;&nbsp;&nbsp;&nbsp;<img src="kmpl.svg" height="15"; width="15";/>41kmpl</span>
<span>&nbsp;&nbsp;&nbsp;&nbsp;<img src="kg.svg" height="15"; width="15";/>148kg</span><br />


<div class=rate><img src="images.png" height="100";width="100";/>
<h3 style ="margin-left:25px; color:#000000";>Overall Rating</h3></div>
<div class=rate><h2 style ="margin-left:25px;color:#000000";>Ratings</h2><img src="rate.png" height="150";width="150"; /></div>



</div>



<img  id="0" class="preview " src="" alt="preview"/><br>





<a href="bike2.jpg"><img id="2" class="thumb normal" src="bike2.jpg"  onmouseover="preview(this)" /></a>

<a href="bike3.jpg"><img id="3" class="thumb normal" src="bike3.jpg"   onmouseover="preview(this)" /></a>

<a href="bike4.jpg"><img id="5" class="thumb normal" src="bike5.jpg"   onmouseover="preview(this)" /></a>

<a href="bike5.jpg"><img id="6" class="thumb normal" src="bike6.jpg"   onmouseover="preview(this)" /></a>








<script>
var lastImg=2;
document.getElementById(lastImg).className="thumb selected";

function preview(img){
document.getElementById(lastImg).className="thumb normal";
img.className="thumb selected";
document.getElementById(0).src=img.src;
lastImg=img.id}

</script>








<div class="box"><button style="background-color: #FF0000; width:200px; height:40px; color:#CCCCCC;font-size:14px;">check on-road price</button></div>
</div>

</body>
</html>
