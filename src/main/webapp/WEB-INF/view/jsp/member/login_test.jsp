<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- login form -->
	<form id="loginForm" action="/member/create" method="post">
		<!-- new post Modal -->
		<div class="modal fade" id="loginModal" role="dialog">
		  <div class="modal-dialog modal-sm">
		    <!-- Modal content-->
		    <div class="modal-content">
		      <div class="modal-body">

						<div class="form-group">
							<label for="loginEmail" class="cols-sm-2 control-label">Your Email</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa"></i></span>
									<input type="text" class="form-control" name="email" id="loginEmail"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="loginPassword" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg"></i></span>
									<input type="password" class="form-control" name="password" id="loginPassword"/>
								</div>
							</div>
						</div>

						<div class="form-group ">
							<button type="button" class="btn btn-lg btn-block login-button">Login</button>
						</div>
		      </div>

		    </div>
		  </div>
		</div>
	</form>

</body>
</html>