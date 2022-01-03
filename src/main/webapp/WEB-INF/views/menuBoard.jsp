<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="userHeader.jsp"%>
<%@ include file="userNavibar.jsp"%>
<style>
.box {
	height: 50px;
	background-color: #337ab7;
	text-align:left;
	color:white;
	font-size:20px;
	font-family: Do Hyeon;
}
.h1 {
	-webkit-text-stroke-width: 1px;
	-webkit-text-stroke-color: #337ab7;
	color: black;
	
	
}

.h2 {
	-webkit-text-stroke-width: 1.3px;
	-webkit-text-stroke-color: black;
	color: white;
	text-align: center
}


</style>
<body>
<div class="row">
	<div class="box">
		<div class="col-xs-3 col-md-3"></div>
		<div class="col-xs-6 col-md-6">
			
			<p style="margin-left: 15%; margin-top: 1.5%;">
				<a href="/main" style="color: white">Home</a> ●
				<a href="/menu/${cgName.m_idx}" style="color: white">Menu</a> ●
				<a href="/menu/${cgName.m_idx}" style="color: white">${cgName.m_name}</a>
			</p>
			
		</div>
		<div class="col-xs-3 col-md-3"></div>	
	</div>
</div>
<div class="row">
	<div class="col-xs-4 col-md-3"></div>
	<div class="col-xs-4 col-md-6">
		<div class="h1">
			<p style="text-align:center; margin-top: 3%;" >
				<c:forEach var="item" items="${subCG}">
					<button class="menuPan" style="background-color: #ffffff; border:none; cursor:pointer; margin-right: 10%; justify-content:space-between; font-family: Do Hyeon; font-size: 1.5em;" value="${item.m_idx}">${item.m_name}</button>
				</c:forEach>
			</p>
		</div>
	</div>
	<div class="col-xs-4col-md-3"></div>	
</div>
<div class="row">
<div>
	<div class="col-xs-4 col-md-3"></div>
	<div id="board" class="col-xs-4 col-md-6">
		
	</div>
	</div>
	<div class="col-xs-4col-md-3"></div>	
</div>

<div class="row">
<div>
	<div class="col-xs-4 col-md-3"></div>
	<div id="menuPan" class="col-xs-4 col-md-6">
		
	</div>
	</div>
	<div class="col-xs-4col-md-3"></div>	
</div>		

</body>


<script>
$(document).ready(function(){
    $(".menuPan").click(function(){  
        $(this).css("text-decoration", "underline");
        $(this).siblings().css("text-decoration", "");
    });    
});


$(document).on('click', '.menuPan', function() {
	
	var idx = $(this).val();
	
	
	$.ajax({
		 method: "GET",
		 url: "/menuSel",
		 data: {m_idx: idx}
	})
	 .done(function( data ) {
		
			$('#board').html(data);
	
		 
	})
	
	.fail(function(e) {
		console.dir(e);
	})
	
	
});

$(document).on('click', '.menuSub', function() {
	
	var idx = $(this).val();
	
	
	$.ajax({
		 method: "GET",
		 url: "/menuBoard",
		 data: {p_cg: idx}
	})
	 .done(function( data ) {
		
			$('#menuPan').html(data);
	
		 
	})
	
	.fail(function(e) {
		console.dir(e);
	})
	
	
});
</script>
