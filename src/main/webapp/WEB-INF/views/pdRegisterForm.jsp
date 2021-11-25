<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="adminNavibar.jsp"%>
<body>
<div class="container">
	<div class="row">
		<div class="col-xs-2 col-md-2"></div>
		<div class="col-xs-8 col-md-8">
			
			<p style="margin-top: 20%; font-size: 20px">▪제품 분류</p>
			<table
			border="1"
            width="100%"
            height="100"
           	>
				<tbody style="text-align:center">
										
					<tr>
					 	<td width="20%" style="text-align:center; font-size: 15px">기본 분류</td>
				 		<td>
				 			<select onchange="alert_select_value(this)">
				 			<c:forEach var="item" items="${cg}">
				 				<option value="${item.m_idx}">${item.m_name}</option>
				 			</c:forEach>
				 			</select>
				 		</td>
					</tr>
					
					<tr>
					 	<td width="20%" style="text-align:center; font-size: 15px">2차 분류</td>
				 		<td>
				 			<select id="Cg">
				 			<c:forEach var="item" items="${subCg}">
				 				<option value="${item.m_idx}">${item.m_name}</option>
				 			</c:forEach>
				 			</select>
				 		</td>
					</tr>
			
				</tbody>
			</table>
			<p style="margin-top: 5%; font-size: 20px">▪제품 코드</p>
			 <td>
			 	<input type="text" style="width: 25%; text-align: center" placeholder="직접 입력">
			 </td>
			 <p style="margin-top: 5%; font-size: 20px">▪제품명</p>
			 <td>
			 	<input type="text" style="width: 25%; text-align: center" placeholder="직접 입력">
			 </td>
			<p style="margin-top: 5%; font-size: 20px">▪이미지 설정</p>
			<p style="margin-top: 5%; font-size: 20px">▪제품 가격<p>
			<td>
			 	<input type="text" style="width: 25%; text-align: center" placeholder="직접 입력">
			 </td>
					
					
		</div>
		<div class="col-xs-2 col-md-2"></div>
	</div>
</div>
</body>

<script>
	var alert_select_value = function (select_obj){
		var selected_index = select_obj.selectedIndex;
		var idx = select_obj.options[selected_index].value;
		
		$.ajax({
			 method: "POST",
			 url: "/subSelect",
			 data: {m_idx: idx}
		})
		 .done(function( data ) {
			 
			 alert('넘기기');
		 
		})
		.fail(function(e) {
			console.dir(e);
		})
	};

 
</script>