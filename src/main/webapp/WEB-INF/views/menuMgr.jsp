<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="userHeader.jsp"%>
<%@ include file="adminNavibar.jsp"%>
<style>
.styled-table {
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 1000px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}
.styled-table thead tr {
    background-color: #009879;
    color: #ffffff;
    text-align: left;
}
.styled-table th,
.styled-table td {
    padding: 12px 15px;
}
.styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}

</style>
<body>

	<div class="row">
		<div class="col-xs-3 col-md-3"></div>
		<div class="col-xs-6 col-md-6">
			<div id="CG">	
			    
				<h2 style="font-family: Do Hyeon; margin-top: 8%; margin-left: 3%">분류 관리</h2>
			
			
				<table class="styled-table" id="CG">
			    <thead>
			        <tr>
			            <th style="text-align: center">분류코드</th>
			            <th style="text-align: center">분류명</th>
			        </tr>
			    </thead>
			   
			    <tbody>
			    	
			    	<c:forEach var="item" items="${cg}">
			    	<tr>
			    	<c:set var="idx">${item.m_idx}</c:set>
			  		<c:set var="idx_length" value='${fn:length(idx)}'></c:set>
			  		<c:set var="idxKey" value="${idx_length-2}"></c:set>
			  		    <td style="text-align: center">
			            	<div style="margin-left: ${idxKey*40}px" >
			            		<input type="text" style="width:60px; text-align: center" value="${item.m_idx}">
			            	</div>
			            </td>
				        <td>
				        	<div style="margin-left: ${idxKey*40}px" data-id="${idxKey*40}">
				        		<input type="text" style="text-align: center; margin-right: 10px"  value="${item.m_name}">
					            <input type="button" style="margin-right: 5px" value="저장하기" class="btn-Sv">
					            <input type="button" value="삭제하기" class="btn_Del" name="${item.m_idx}">
					            <c:if test="${fn:length(idx)} < 7">
					            <input type="button" value="하위 항목 추가" class="addBelow" style="margin-left:5px" name="${idxKey*40}">
					            </c:if>
				            </div>
			            </td>
			        </tr>
			        </c:forEach>
			      
			       	<tr>
					  <td style="text-align: center"><input type="button" value="+" id="btnAdd"></td>
			        </tr>       
			    </tbody>
			    </table>
			</div>
		</div>
		<div class="col-xs-3 col-md-3"></div>
	</div>

</body>


<script>
	 
	$(document).on('click', '#btnAdd', function () {
		let html = 
		`<tr>
			<td style="text-align: center">
				<div style="margin-left: 0px">
           	 		<input type="text" style="width:60px; text-align: center" name="m_idx">
           	 	</div>
            </td>
            <td>
            	<div style="margin-left: 0px">
            		<input type="text" style="text-align: center; margin-right: 10px" name="m_name">
            		<input type="button" value="저장하기" style="margin-right: 5px" class="btn-Sv">
            		<input type="button" value="삭제하기" class="btn_Del">
            		<input type="button" value="하위 항목 추가" class="addBelow" style="margin-left:5px" name="${idxKey*40}">
            	</div>
            </td>
         </tr>`;  
		
		$(this).parent().parent().before(html);
	});


	$(document).on('click', '.addBelow', function () {
		let div = $(this).parent().attr("data-id");
		let marginVal = Number(div) + 80;
		let html = 
		`<tr>
			<td style="text-align: center">
            	<div style="margin-left:\${marginVal}px" >
            		<input type="text" style="width:60px; text-align: center" name="m_idx">
            	</div>
            </td>
            <td>
            	<div style="margin-left:\${marginVal}px" data-id="\${marginVal}">
            	  	<input type="text" style="text-align: center; margin-right: 10px" name="m_name">
            		<input type="button" value="저장하기" style="margin-right: 5px" class="btn-Sv">
            		<input type="button" value="삭제하기" class="btn_Del">
            		<input type="button" value="하위 항목 추가" class="addBelow" style="margin-left:5px">
            	</div>
            </td>
        </tr>`;
        let idx = $(this).parent().parent().parent().children().children().children().val();
        if(marginVal<620 && idx!="") {
			$('input[value^='+idx+']').last().parent().parent().parent().last().after(html);
		} else if(marginVal<620 && idx=="") {
			console.dir($(this).parent().parent().parent().after(html));
		} else {
			alert("더 이상의 하위항목을 추가할 수 없습니다.");
		}  
	});
		

	

	$(document).on('click', '.btn_Del', function () {
		let confirmTest = confirm("삭제하시겠습니까?");
		if(confirmTest==true) {
			let idx = $(this).parent().parent().prev().find('input').val();
			location.href = "/menuDel/"+idx;
		} else if(confirmTest==false){
			return;
		}		
	});

	$(document).on('click', '.btn-Sv', function () {
		let name = $(this).prev().val();
		let idx = $(this).parent().parent().prev().find('input').val();
		$.ajax({
			 method: "POST",
			 url: "/cg-update",
			 data: {m_idx: idx, m_name: name}
		})
		 .done(function( data ) {
			 
			 alert('저장완료');
		 
		})
		.fail(function(e) {
			console.dir(e);
		})
	}); 
			
	
</script>

