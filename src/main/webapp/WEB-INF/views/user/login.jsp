<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Google Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100'
	rel='stylesheet' type='text/css'>

<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.css">

<!-- Font Awesome -->
<link rel="stylesheet" href="css/font-awesome.min.css">
</head>
<body>
	
	<div class="container" style="margin-top: 100px;">
		<div class="row">
		<div class="col-3"></div>
			<div class="col-6">
				<h2>Chào mừng bạn đến với Baby Shop ! </h2><br>
				<form action="<c:url value="/login"/>" method="post">
					<div class="form-group">
						<label for="exampleInputEmail1">Tài khoản</label> 
						<input type="text" name="username" class="form-control" id="exampleInputEmail1"
							 placeholder="Nhập tài khoản...">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Mật khẩu</label> 
						<input type="password" name="password" class="form-control" id="exampleInputPassword1"
							placeholder="Nhập mật khẩu...">
					</div>
					<!-- <div class="form-check">
						<input type="checkbox" class="form-check-input" id="exampleCheck1">
						<label class="form-check-label" for="exampleCheck1">Ghi nhớ mật khẩu</label>
					</div> --><br>
					<button type="submit" class="btn btn-primary">Đăng nhập</button>
				</form>
				<br>
				<p>Nếu bạn chưa có tài khoản ! Bạn có thể <a href="<c:url value="/register"/>">Đăng ký</a> để sử dụng dịch vụ !</p>
			</div>
			<div class="col-3"></div>
		</div>
	</div>
</body>
</html>