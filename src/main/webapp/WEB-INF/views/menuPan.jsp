<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
.h3 {
	color: black;
	text-align: center;
	font-size: 20pt
}
</style>


<div class="h3">
<div class="col-xs-4 col-md-4"></div>
<div class="col-xs-4 col-md-4">
	<c:forEach var="item" items="${board}">
	<div style="margin-right:50%">
	<img src="/${item.p_fileName}">
	${item.p_name}
	</div>
	</c:forEach>
</div>
<div class="col-xs-4 col-md-4"></div>
</div>
