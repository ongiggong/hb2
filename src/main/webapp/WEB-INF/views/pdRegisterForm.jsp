<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="adminNavibar.jsp"%>
<body>
<div class="container">
	<div class="row">
		<div class="col-xs-2 col-md-2"></div>
		<div class="col-xs-8 col-md-8">
			
			<form style="margin-top: 20%; font-size: 20px" name="pdForm" class="form-horizontal" action="/pdformUpload" method="post" enctype="multipart/form-data">
				<div class="form-group"  style="margin-top: 5%">
				    <label for="productNumber" style="text-align: center" class="col-sm-2 control-label">제품 코드</label>
				    <div class="col-sm-10">
				      <input type="text" style="width:20%" class="form-control" id="p_number" name="productNumber" placeholder="직접 입력">
				    </div>
			  	</div>
				<div class="form-group" style="margin-top: 5%">
					<label for="productName" style="text-align: center" class="col-sm-2 control-label">제품명</label>
					<div class="col-sm-10">
					 <input type="text" style="width:20%" class="form-control" id="p_name" name="productName" placeholder="직접 입력">
					</div>
				</div>
			  
				<div  id="subCg" class="form-group" style="margin-top: 5%">
					<label for="Category" style="text-align: center" class="col-sm-2 control-label">제품 분류</label>
				   	<div class="col-sm-10">
					<table class="table table-hover" style="width:70%">
					    	
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
								<td id="subCate">
									<select id="Cg" name="p_cg">
									<c:forEach var="sub" items="${subCg}">
										<option value="${sub.m_idx}">${sub.m_name}</option>
									</c:forEach>
									</select>
								</td>
							</tr>
						</tbody>
					</table>
				    </div>
				 </div>
				 <div class="form-group" style="margin-top: 5%">
					<label for="productPrice" style="text-align: center" class="col-sm-2 control-label">제품 가격</label>
					<div class="col-sm-10">
					 <input type="text" style="width:20%" class="form-control" id="productPrice" name="price" placeholder="직접 입력">
					</div>
				 </div>
				 <div class="form-group" style="margin-top: 5%">
					<label for="productImage" style="text-align: center" class="col-sm-2 control-label">제품 이미지</label>
					<div class="col-sm-10">
					   <input type="file" name="p_files"> 
					   <input style="margin-top: 5%" type="submit" value="업로드">
					</div>
				 </div>
				 <p style="margin-left:5%; margin-top: 8%"><input type="button" value="등록하기" style=" font-size: 20px" onclick=""></p>
			</form>
			
			 
			
					
					
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
			 $('#subCate').html(data);
			
			
		 
		})
		.fail(function(e) {
			console.dir(e);
		})
	};

 
</script>