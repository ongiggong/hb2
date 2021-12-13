<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


	<select name="p_cg">
		<option value="">선택</option>
		<c:forEach var="sub" items="${subCg}">
			<option value="${sub.m_idx}">${sub.m_name}</option>
		</c:forEach>
	</select>




