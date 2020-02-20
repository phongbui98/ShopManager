<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Tài khoản</title>
<!-- Bootstrap Styles-->
<link href="../assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="../assets/css/font-awesome.css" rel="stylesheet" />

<link href="../assets/css/select2.min.css" rel="stylesheet">
<link href="../assets/css/checkbox3.min.css" rel="stylesheet">
<!-- Custom Styles-->
<link href="../assets/css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />

<style type="text/css">
.sub-title {
	font-style: inherit;
	margin-top: 10px;
}

.col-xs-6 input {
	margin-top: 10px;
	height: 40px;
}
</style>
</head>
<body>

	<jsp:include page="common/header.jsp"></jsp:include>
	<!-- CONTENT -->
	<div class="row" style="margin: 40px 0;">
		<div class="col-xs-3"></div>
		<form action="<c:url value='/register' />" method="post">
			<div class="col-xs-6">
				<div class="sub-title">Tài khoản</div>
				<div>
					<input name="username" type="text" class="form-control"
						placeholder="Nhập tên tài khoản">
				</div>

				<div class="sub-title">Mật khẩu</div>
				<div>
					<input name="password" type="text" class="form-control"
						placeholder="Nhập mật khẩu">
				</div>

				<div class="sub-title">Họ và tên</div>
				<div>
					<input name="fullname" type="text" class="form-control"
						placeholder="Nhập họ và tên">
				</div>

				<div class="sub-title">Địa chỉ</div>
				<div>
					<input name="address" type="text" class="form-control"
						placeholder="Nhập địa chỉ(ghi rõ số nhà)">
				</div>

				<div class="sub-title">Số điện thoại</div>
				<div>
					<input name="phonenumber" type="number" class="form-control"
						placeholder="Nhập số điện thoại">
				</div>
				<hr>
				<div>
					<button class="btn btn-success">Lưu</button>
					<button class="btn btn-danger">Quay lại</button>
				</div>
			</div>
		</form>
	</div>
	<div class="col-xs-3"></div>
	<jsp:include page="common/footer.jsp"></jsp:include>


	<script type="text/javascript">
		$(document).ready(function() {
			$(".selectbox").select2();
		});
	</script>

</body>
</html>
