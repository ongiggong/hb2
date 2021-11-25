<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file= "userHeader.jsp"%>
<%@ include file= "userNavibar.jsp"%>

<style>
.form-signin {
	font-family: Do Hyeon;
	 
}
</style>
<div class="container">
	<div class="row">
		
		<div class="col-xs-6 col-sm-4" ></div>
	    <div class="col-xs-6 col-sm-4" style="margin-top:10%">
	      <form class="form-signin" action="/login" method="post">
	        <h2 class="form-signin-heading">로그인</h2>
	        <label for="inputEmail" class="sr-only">ID</label>
	        <input type="email" name="username" class="form-control" placeholder="Email Address" required autofocus>
	        <label for="inputPassword" class="sr-only">Password</label>
	        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	        <input type="password" name="password" class="form-control" placeholder="Password" required>
	        <div class="checkbox">
	          <label>
	            <input type="checkbox" id="remember_me" name="remember-me"> 로그인 유지
	          </label>
	        </div>
	        <div class="col-xs-6 col-sm-6">
	        <button class="btn btn-lg btn-primary btn-block" type="submit" style="font-size:100%; background-color: #337ab7; text-align:center" onclick="location.href='/signupForm' ">회원가입</button>
	        </div>
	        <div class="col-xs-6 col-sm-6">
	        <button class="btn btn-lg btn-primary btn-block" type="submit" style="background-color: #337ab7; font-size:100%">로그인</button>
	        </div>
	      </form>
	     </div>
	     <div class="col-xs-6 col-sm-4"></div>
	</div>
</div>
</body>
</html>