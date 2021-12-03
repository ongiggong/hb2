<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<select id="Cg">
	<c:forEach var="sub" items="${subCg}">
		<option value="${sub.m_idx}">${sub.m_name}</option>
	</c:forEach>
</select>
