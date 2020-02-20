<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value='../../css/bootstrap.min.css' />" rel="stylesheet">
<link href="<c:url value='../../css/datepicker3.css' />" rel="stylesheet">
<link href="<c:url value='../../css/styles.css' />" rel="stylesheet">

</head>
<body>
	<div class="row" style="margin-top: 50px;">
		<div
			class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Đăng nhập Admin</div>
				<div class="panel-body">
					<form role="form" action="<c:url value='/admin/login'/>" method="post">
						<h4 style="color: red;"> ${error}</h4>
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="Tên tài khoản..."
									name="username" value="${account.username}" type="text">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Password"
									name="password" type="password" value="">
							</div>
							<div class="checkbox">
								<label> <input name="remember" type="checkbox"
									value="Remember Me">Ghi nhớ mật khẩu
								</label>
							</div>
							<button type="submit" class="btn btn-primary">Đăng nhập</button>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
		<!-- /.col-->
	</div>
	<!-- /.row -->


	<script src="../../js/jquery-1.11.1.min.js"></script>
	<script src="../../assets/js/bootstrap.min.js"></script>
</body>
</html>


