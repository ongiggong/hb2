<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="userHeader.jsp" %>
<style>
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Sunflower:wght@500&display=swap');
li{
   list-style:none;
   
   }
   
 .row {
 	font-family: Do Hyeon;
 }
 
 .navbar-nav {
 	font-size:120%;
 }
</style>
<body>
<p style="text-align:center; padding-top:0.5%; font-size: 20px"><관리자 페이지></p>
<div class="container">
	<div class="row">
		<div class=".col-xs-4 .col-md-4"></div>
		<div class=".col-xs-4 .col-md-4" style="margin-top: 3%">
			<span class="navbar-brand" style="cursor:pointer" onclick="location.href='/adminMain'">
  				<img src="/burger.jpg" style= "margin-top:30%; width:140px; height:120px;" alt="아이콘">
 			 </span>
	     <div id="menu" class="navbar-nav" style="margin-left:25%; margin-top: 5%; width:70%; display:flex;padding-bottom:0.1%;justify-content:space-between;align-items:flex-end">
		      <a class="nav-item nav-link active" data-toggle="dropdown" style="color:black; cursor:pointer; font-family:Do Hyeon; font-size:200%; font-weight-bold">메뉴 관리</a>
		      <a class="nav-item nav-link" href="#" style="color: black; font-family:Do Hyeon; font-size:200%">주문 관리</a>
		      <a class="nav-item nav-link" href="#" style="color:black; font-family:Do Hyeon; font-size:200%">회원 관리</a>
			     
   	 	</div>
		<div class=".col-xs-4 .col-md-4"></div>
		</div>	
    </div>
    
    <div class="row">
    	<div class="col-xs-2 col-md-2"></div>
    	<div class="col-xs-8 col-md-8">
    		<div id="sub_1" style="font-size:2rem; text-align: center; margin-left:10%; width:110%; display:flex; justify-content:space-evenly;">
	    		<span style="">
	    			<a href="/menuMgr">분류 관리</a><br>
					<a href="/mbMgr">제품 관리</a>
				</span>
				<span  style="margin-left: 35%">
					<a href="">주문</a>
				</span>
				<span style="margin-left: 33%">
					<a href="">회원관리</a>
				</span>
			</div>
    	</div>
    	<div class="col-xs-2 col-md-2"></div>
    	
    </div>
</div>

</body>

<script>

$(document).ready(function(){
	
		
	$('#sub_1').hide();
	
		
	$('#menu').mouseover(function(){
		
		$('#sub_1').slideDown();
		
	});
	
	$('#sub_1').mouseleave(function(){
		$('#sub_1').slideUp();	

	});	

});






</script>
