<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="adminNavibar.jsp"%>
<body>
<div class="container">
	<div class="row">
		<div class="col-xs-2 col-md-2"></div>
		<div class="col-xs-8 col-md-8">
			
			<form style="margin-top: 20%; font-size: 20px" name="pdForm" onSubmit="return checkForm()" class="form-horizontal" action="/pdformUpload" method="post" enctype="multipart/form-data">
				<div class="form-group"  style="margin-top: 5%">
				    <label for="productNumber" style="text-align: center" class="col-sm-2 control-label">제품 코드</label>
				    <div class="col-sm-10">
				      <input type="text" style="width:20%" class="form-control" name="p_number" placeholder="직접 입력">
				    </div>
			  	</div>
				<div class="form-group" style="margin-top: 5%">
					<label for="productName" style="text-align: center" class="col-sm-2 control-label">제품명</label>
					<div class="col-sm-10">
					 <input type="text" style="width:20%" class="form-control" name="p_name" placeholder="직접 입력">
					</div>
				</div>
			  
				<div class="form-group" style="margin-top: 5%">
					<label for="Category" style="text-align: center" class="col-sm-2 control-label">제품 분류</label>
				   	<div class="col-sm-10">
					<table class="table table-hover" style="width:70%">
					    	
						<tbody style="text-align:center">
												
							<tr>
							 	<td width="20%" style="text-align:center; font-size: 15px">기본 분류</td>
								<td>
								<select class="1stMenu">
								<option value="">선택</option>
								<c:forEach var="item" items="${cg}">
									<option value="${item.m_idx}">${item.m_name}</option>
								</c:forEach>
								</select>
								</td>
							</tr>
							<tr id="basic">
							</tr>
						</tbody>
					</table>
				    </div>
				 </div>
				 <input type="hidden" id="cgFinal" name="p_cg"></input>
				 <div class="form-group" style="margin-top: 5%">
					<label for="productPrice" style="text-align: center" class="col-sm-2 control-label">제품 가격</label>
					<div class="col-sm-10">
					 <input type="text" style="width:20%" class="form-control" name="p_price" placeholder="직접 입력">
					</div>
				 </div>
				 <div class="form-group" style="margin-top: 5%">
					<label for="productImage" style="text-align: center" class="col-sm-2 control-label">제품 이미지</label>
					<div class="col-sm-10">
					   <input style="margin-bottom: 3%" type="file" name="file1">
					   <input type="file" name="file2">
					</div>
				 </div>
				 <p style="margin-left:70%; margin-top: 5%"><input type="submit" value="업로드" style=" font-size: 20px"></p>
			</form>
			
			 
		
					
		</div>
		<div class="col-xs-2 col-md-2"></div>
	</div>
</div>
</body>

<script>
var cgNum;

$(document).on('change', '.1stMenu', function() {
	
		var idx = $(this).val();
		
		
		$.ajax({
			 method: "POST",
			 url: "/subSelect",
			 data: {m_idx: idx}
		})
		 .done(function( data ) {
			
			
			 $('#basic').prev().parent().append(data);
			 $(".1stMenu").change(function() {
			 	cgNum = $(this).val();
			 	$("#cgFinal").val(cgNum);
			 })
			 
		})
		
		.fail(function(e) {
			console.dir(e);
		})
	});


function checkForm(){
	if(pdForm.p_number.value==""){
		
		pdForm.p_number.focus();
		alert("제품 코드를 입력해주세요.");
		
		return false;
	}
	
	if(pdForm.p_name.value==""){
			
		pdForm.p_name.focus();
		alert("제품명을 입력해주세요.");
		
		return false;
	}
	
	
	
	if(pdForm.p_price.value==""){
		
		pdForm.p_price.focus();
		alert("제품 가격을 입력해주세요.");
		
		return false;
	}
	
	if(pdForm.file1.value==""){
		
		pdForm.file1.focus();
		alert("최소 1개 이상의 이미지 파일을 선택해주세요");
		
		return false;
	}
}
	


</script>