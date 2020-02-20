<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="common/head.jsp"></jsp:include>
<body>
<jsp:include page="common/nav.jsp"></jsp:include>
<!--/. NAV TOP  -->
<jsp:include page="common/nav-top.jsp"></jsp:include>
	<!-- CONTENT -->
	<div id="wrapper">
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header"></h1>
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li class="active">Quản lý sản phẩm</li>
					<li class="active">Thêm mới</li>
				</ol>

			</div>

			<div id="page-inner">
				<div class="row">
					<div class="col-xs-12">
						<div class="panel panel-default">
							<div class="panel-heading"></div>
							<div class="panel-body">

								<div class="sub-title">Loại sản phẩm</div>
								<div>
									<select class="selectbox" style="width: 300px;">
										<optgroup>
											<option value="AK">Cũi gỗ</option>
											<option value="HI">Quây</option>
											<option value="HI">Nệm</option>
											<option value="HI">Đồ sơ sinh</option>
										</optgroup>
									</select>
								</div>

								<div class="sub-title">Mã sản phẩm</div>
								<div>
									<input type="text" class="form-control"
										placeholder="Nhập mã sản phẩm">
								</div>
								<div class="sub-title">Tên sản phẩm</div>
								<div>
									<input type="text" class="form-control"
										placeholder="Nhập tên sản phẩm">
								</div>
								<div class="sub-title">Hình ảnh</div>
								<div>
									<input class="btn btn-success" type="file"
										style="background-color: black;">
								</div>

								<div class="sub-title">Giá</div>
								<div>
									<input type="number" class="form-control"
										placeholder="Nhập giá sản phẩm">
								</div>

								<div class="sub-title">Mô tả sản phẩm</div>
								<div>
									<input type="text" class="form-control"
										placeholder="Nhập giá sản phẩm">
								</div>
								<div>
									<div class="sub-title">Trạng thái</div>
									<div>
										<div class="radio3 radio-check radio-success radio-inline">
											<input type="radio" id="radio4" name="radio2" value="option1"
												checked="checked"> <label for="radio4">Hoạt
												động</label>
										</div>
										<div class="radio3 radio-check radio-inline">
											<input type="radio" id="radio5" name="radio2" value="option2">
											<label for="radio5">Tạm dừng</label>
										</div>
									</div>
								</div>
								<button class="btn btn-success">Lưu</button>
								<button class="btn btn-danger">Quay lại</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /. WRAPPER  -->
	<!-- JS Scripts-->
	<!-- jQuery Js -->
	<script src="../../assets/js/jquery-1.10.2.js"></script>
	<!-- Bootstrap Js -->
	<script src="../../assets/js/bootstrap.min.js"></script>
	<!-- Metis Menu Js -->
	<script src="../../assets/js/jquery.metisMenu.js"></script>
	<script src="../../assets/js/select2.full.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$(".selectbox").select2();
		});
	</script>
	<!-- Custom Js -->
	<script src="../../assets/js/custom-scripts.js"></script>
</body>
</html>
