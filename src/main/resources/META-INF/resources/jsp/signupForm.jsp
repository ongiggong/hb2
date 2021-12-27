<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="userHeader.jsp"%>


<style>
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Sunflower:wght@500&display=swap');
body {
	color: #fff;
	background: #337ab7;
	font-family: Do Hyeon;
}
.form-control {
	height: 41px;
	background: #f2f2f2;
	box-shadow: none !important;
	border: none;
}
.form-control:focus {
	background: #e2e2e2;
}
.form-control, .btn {        
	border-radius: 3px;
}
.signup-form {
	width: 400px;
	margin: 30px auto;
}
.signup-form form {
	color: #999;
	border-radius: 3px;
	margin-bottom: 15px;
	background: #fff;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 30px;
}
.signup-form h2  {
	color: #333;
	font-weight: bold;
	margin-top: 0;
}
.signup-form hr  {
	margin: 0 -30px 20px;
}    
.signup-form .form-group {
	margin-bottom: 20px;
}
.signup-form input[type="checkbox"] {
	margin-top: 3px;
}
.signup-form .row div:first-child {
	padding-right: 10px;
}
.signup-form .row div:last-child {
	padding-left: 10px;
}
.signup-form .btn {        
	font-size: 16px;
	font-weight: bold;
	background: #3598dc;
	border: none;
	min-width: 140px;
}
.signup-form .btn:hover, .signup-form .btn:focus {
	background: #2389cd !important;
	outline: none;
}
.signup-form a {
	color: #fff;
	text-decoration: underline;
}
.signup-form a:hover {
	text-decoration: none;
}
.signup-form form a {
	color: #3598dc;
	text-decoration: none;
}	
.signup-form form a:hover {
	text-decoration: underline;
}
.signup-form .hint-text  {
	padding-bottom: 15px;
	text-align: center;
}
</style>

<body>

<div class="signup-form" style="padding-top:7%">
    <form method="POST" action="/signUp">
		<h2>회원가입</h2>
		<hr>
        <div class="form-group">
        	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
			<div class="col"><input type="text" class="form-control" name="uName" placeholder="이름" required="required"></div>
        </div>
        <div class="form-group">
        	<input type="email" class="form-control" name="username" placeholder="ID(이메일 주소)" required="required">
        </div>
		<div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="비밀번호" required="required">
        </div>
		<div class="form-group">
            <input type="text" class="form-control" name="uAge" placeholder="생년월일" required="required">
        </div>
        <div class="form-group">
       	    <input type="text" class="form-control" name="uPhone" placeholder="휴대폰 번호(XXX-XXXX-XXXX)" required="required"> 
		</div>
	    <div class="form-group">
            <button type="submit" style="margin-left:28%; margin-top:10%" class="btn btn-primary btn-lg">가입하기</button>
        </div>
    </form>
	<div class="hint-text">이미 회원이십니까? <a href="/loginForm">로그인하기</a></div>
</div>
</body>
</html>
