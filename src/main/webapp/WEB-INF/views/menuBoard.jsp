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
	<div class="col-xs-4 col-md-4"></div>
	<div class="col-xs-4 col-md-4">
		<p style="text-align:center; margin-top: 10%;" >
			<c:forEach var="item" items="${subCG}">
				<a class="menuPan" style="cursor:pointer; margin-right: 20%; justify-content:space-between; font-family: Do Hyeon; font-size: 2.5em; color: black;" href="/menuboard/${item.m_idx}">${item.m_name}</a>
			</c:forEach>
		</p>
	</div>
	<div class="col-xs-4col-md-4"></div>	
</div>
<div class="row">
	<div class="col-xs-3 col-md-3"></div>
	<div class="col-xs-6 col-md-6">
		
	</div>
	<div class="col-xs-3 col-md-3"></div>	
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
	
	var idx = $(this).();
	alert(idx);
	
	
	
	
});
</script>
