<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <c:if test="${!empty subCg}"> --%>
	<td width="20%" style="text-align:center; font-size: 15px"></td>
	<td>
	<select id="cgFinal" class="1stMenu">
		<option value="">선택</option>
		<c:forEach var="sub" items="${subCg}">
		<option value="${sub.m_idx}">${sub.m_name}</option>
		</c:forEach>
	</select>
	</td>
<%-- </c:if> --%>

