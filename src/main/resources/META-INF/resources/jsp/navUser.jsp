<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="userHeader.jsp" %>

<span style="margin-left:9.5%">
	<c:forEach var="item" items="${cg}">
		<li><a href="/menu/${item.m_idx}">${item.m_name}</a></li>
	</c:forEach>
</span>
<span style="padding-right:2.2%">
	<a href="/order">주문하기</a>	
</span>
<span  style="">
	<a href="/ceoJung">CEO</a>
</span>
<span style="">
	<a href="/event">이달의 이벤트</a>
</span>
