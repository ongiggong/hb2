<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="h2">
	<c:forEach var="item" items="${board}">
		<button class="menuSub" style="background-color: #ffffff; border:none; cursor:pointer; margin-top: 2%; margin-right: 10%; justify-content:space-between; font-family: Do Hyeon; font-size: 1em;" value="${item.m_idx}">${item.m_name}</button>
	</c:forEach>
</div>
<script>
$(document).ready(function(){
    $(".menuSub").click(function(){  
        $(this).css("font-size", "1.5em");
        $(this).siblings().css("font-size", "1em");
    });    
});

</script>