<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="h2">
<c:forEach var="item" items="${board}">

<p>${item.p_name}</p>

</c:forEach>

</div>