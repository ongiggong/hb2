<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="userHeader.jsp"%>
<%@ include file="adminNavibar.jsp"%>
<style>
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
			<h2 style="font-family: Do Hyeon; margin-top: 8%; margin-left: 3%">제품 관리</h2>
			<p style="text-align: right; margin-right: 1%"><input type="button" value="제품 등록" style=" font-size: 20px" onclick="location.href='/pdRegister'"></p>
			
			
			<table class="styled-table">
			    <thead>
			        <tr>
			            <th scope="col" rowspan="3" style="text-align: center">상품코드</th>
			            <th scope="col" rowspan="3" style="text-align: center">분류</th>
			            <th scope="col" rowspan="2" style="text-align: center">이미지</th>
			        	<th scope="col" rowspan="2" style="text-align: center">상품명</th>
			        	<th scope="col" rowspan="2" style="text-align: center">판매가격</th>
			            <th scope="col" rowspan="5" style="text-align: center">판매</th>
			            <th scope="col" rowspan="5" style="text-align: center">품절</th>
			            <th scope="col" rowspan="5" style="text-align: center">관리</th>
			        </tr>
			        <tr>
			        	
			        </tr>
			    </thead>
			   
			    <tbody>
			    	
			    	
			    	<tr style="text-align: center">
			    	    <td style="text-align: center">
			            	<input type="text" style="width: 60%">
			            </td>
			            <td>
				        	<input type="text" style="width: 60%">
			            </td>
			             <td style="width: 10%">
				        	<p></p>
			            </td>
			            <td>
				        	<input type="text" style="width: 120%">
			            </td>
			            <td>
				        	<input type="text" style="width: 50%">
			            </td>
			            <td style="width: 10%">
			            	<input type="checkbox">
			            </td>
			            <td style="width: 10%">
			            	<input type="checkbox">
			            </td>
			            <td style="width: 10%">
			            	<p><input type="button" value="수정"></p>
			            	<p><input type="button" value="삭제"></p>
			            </td>
			        </tr>
			                
			    </tbody>
			    </table>
		</div>
		<div class="col-xs-3 col-md-3"></div>
</div>
</body>

<script>
	
</script>