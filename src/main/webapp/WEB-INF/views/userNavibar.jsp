<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="userHeader.jsp" %>
<style>
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Sunflower:wght@500&display=swap');

.ho-menu {
	color:black; 
	font-family:Do Hyeon; 
	font-size:230%;
}


li{
   list-style:none;
   
   }

.sub_1 {
	display: default;
	text-align: left;
	

}
</style>


<div class="container">

	<div class="row">
		<div class="col-xs-12 col-md-12">
			<img src="/burger.jpg" style="margin-top:2%; margin-left: 45%; width:140px; cursor:pointer; height:120px" alt="아이콘" onclick="location.href='/main'">
			<div style="text-align:right" >
					<sec:authorize access="isAnonymous()">
						<a href="/loginForm" style="color:black; font-family:Do Hyeon; margin-right:17px; font-size:130%">로그인</a>
						<a href="#" style="color:black; font-family:Do Hyeon; margin-right:50px; font-size:130%">카트</a>	
				    </sec:authorize>
				    <sec:authorize access="isAuthenticated()">
					   	<a href="/logout" style="color:black; margin-right:17px; font-family:Do Hyeon; font-size:130%">로그아웃</a>
					    <a href="#" style="color:black; margin-right:50px; font-family:Do Hyeon; font-size:130%">카트</a>
				    </sec:authorize>
		 	</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-xs-2 col-md-2"></div>
		<div class="col-xs-6 col-md-6">
			<div id="menu" style=" padding-top: 3%; width:131%;  padding-bottom:0.1%; display:flex; justify-content:space-between;align-items:flex-end">
			
		    	<ul style="color:black; cursor:pointer; font-family:Do Hyeon; font-size:230%; font-weight-bold">
		    		<li>Menu</li>
				</ul>
			    <ul class="ho-menu"><li>Order</li></ul>
			    <ul class="ho-menu"><li>Story</li></ul>
			    <ul class="ho-menu"><li>Event</li></ul>
			    
			 </div>
		</div>
	     <div class="col-xs-4 col-md-4"></div>
	</div>
	
	<div class="row">
		<div class="col-xs-2 col-md-2"></div>
		<div id="sub_1" class="col-xs-6 col-md-6">
		</div>
		<div class="col-xs-4 col-md-4"></div>
		
	</div>	
</div>


<script>

$(document).ready(function(){
	
	
	$('#sub_1').hide();
		ajGetNav();
	
	$('#menu').mouseover(function(){
		
		$('#sub_1').slideDown();
		
	});
	
	$('#sub_1').mouseleave(function(){
		$('#sub_1').slideUp();	

	});	

});

function ajGetNav() {
	$.ajax({
	    url: "/userNav", 
	    dataType : "text",
	   
	    success: function(data) { 
	    	
	    	$("#sub_1").html(data);
	       	$('#sub_1').attr('style', 'justify-content:space-evenly; width:94%; display:flex; font-size:14pt;font-family:Do Hyeon');
	       	
	    }
	});
}





</script>
