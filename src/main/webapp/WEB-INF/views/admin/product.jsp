<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quản lý tài khoản</title>
<!-- Bootstrap Styles-->
<link href="../../assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="../../assets/css/font-awesome.css" rel="stylesheet" />
<!-- Morris Chart Styles-->

<!-- Custom Styles-->
<link href="../../assets/css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<!-- TABLE STYLES-->
<link href="../../assets/js/dataTables/dataTables.bootstrap.css"
	rel="stylesheet" />
</head>
<body>
	<nav class="navbar navbar-default top-navbar" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".sidebar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html"><strong> Baby
					Shop Admin</strong></a>
			<div id="sideNav">
				<i class="fa fa-bars icon"></i>
			</div>
		</div>
	</nav>
	<!--/. NAV TOP  -->
	<nav class="navbar-default navbar-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav" id="main-menu">
				<li><a  href="indexAdmin.jsp"><i
						class="fa fa-dashboard"></i>Tổng hợp</a></li>
				<li><a href="account.jsp"><i class="fa fa-qrcode"></i> Tài
						khoản</a></li>
				<li><a href="product.jsp" class="active-menu"><i class="fa fa-table"></i> Sản
						phẩm</a></li>
				<li><a href="#"><i class="fa fa-sitemap"></i>Danh mục tham
						chiếu<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="category.jsp">Loại sản phẩm</a></li>
						<li><a href="#">Hãng sản xuất</a></li>
					</ul></li>
				<li><a href="order.jsp"><i class="fa fa-table"></i>Đơn hàng</a></li>
				<li><a href="../index.jsp"><i class="fa fa-table"></i>Trang chủ</a></li>
				<li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Đăng
						xuất</a></li>
			</ul>
		</div>
	</nav>
	<!-- /. NAV SIDE  -->


	<div id="wrapper">
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">Quản lý sản phẩm</h1>
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li class="active">Quản lý sản phẩm</li>
				</ol>
				<a href="newProduct.jsp" style="color: black;">Thêm mới</a>
			</div>
	
				
			<div id="page-inner">

				<div class="row">
					<div class="col-md-12">
						<!-- Advanced Tables -->
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th>STT</th>
												<th>Mã sản phẩm</th>
												<th>Tên sản phẩm</th>
												<th>Hình ảnh</th>
												<th>Giá bán</th>
												<th>Mô tả sản phẩm</th>
												<th>Loại</th>
												<th>Trạng thái</th>
												<th>Hành động</th>
											</tr>
										</thead>
										<tbody>
											<tr class="odd gradeX">
												<td>1</td>
												<td>C01</td>
												<td>Cũi gỗ cao cấp</td>
												<td><img src="img/cui1.jpg" height="50px;"></td>
												<td>2400000</td>
												<td width="200px">Cũi cao cấp được làm từ nguyên liệu tốt nhất</td>
												<td>Cũi</td>
												<td>Hoạt động</td>
												<td><button class="btn btn-success">Sửa</button>
													<button class="btn btn-danger">Xóa</button></td>
											</tr>

										</tbody>
									</table>
								</div>

							</div>
						</div>
						<!--End Advanced Tables -->
					</div>
				</div>
				<!-- /. ROW  -->
			</div>
			<!-- /. PAGE INNER  -->
		</div>
	</div>
	<!-- JS Scripts-->
	<!-- jQuery Js -->
	<script src="../../assets/js/jquery-1.10.2.js"></script>
	<!-- Bootstrap Js -->
	<script src="../../assets/js/bootstrap.min.js"></script>
	<!-- Metis Menu Js -->
	<script src="../../assets/js/jquery.metisMenu.js"></script>
	<!-- DATA TABLE SCRIPTS -->
	<script src="../../assets/js/dataTables/jquery.dataTables.js"></script>
	<script src="../../assets/js/dataTables/dataTables.bootstrap.js"></script>
	<script>
		$(document).ready(function() {
			$('#dataTables-example').dataTable();
		});
	</script>
	<!-- Custom Js -->
	<script src="../../assets/js/custom-scripts.js"></script>

</body>
</html>
