<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<jsp:include page="common/head.jsp"></jsp:include>
<body>
<jsp:include page="common/nav.jsp"></jsp:include>
<!--/. NAV TOP  -->
<jsp:include page="common/nav-top.jsp"></jsp:include>
	<div id="wrapper">
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">Quản lý tài khoản</h1>
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li class="active">Quản lý tài khoản</li>
				</ol>
				<a class="btn btn-primary"
					href="<c:url value='/admin/newAccount' />" style="color: black;">Thêm
					mới</a>
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
												<th>Họ và tên</th>
												<th>Tài khoản</th>
												<th>Mật khẩu</th>
												<th>Quyền</th>
												<th>Trạng thái</th>
												<th>Hành động</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${listAccount}" var="a">
												<tr class="odd gradeX">

													<td>${a.id }</td>
													<td>${a.fullName }</td>
													<td>${a.username }</td>
													<td>${a.password }</td>
													<td>${a.role }</td>
													<td>${a.active }</td>
													<td>
														<!-- Hành động -->
														<form action="<c:url value="/admin/account"/>" method="post">
															<input type="hidden" name="id" value="${a.id}">
															<button class="btn btn-success" name="action" value="edit" >Sửa</button>
															<button class="btn btn-danger" name="action" value="delete" >Xóa</button>
														</form>
													</td>
												</tr>
											</c:forEach>
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
			$('#dataTables-example').dataTable({
				"language" : {
					"paginate" : {
						"previous" : "<<",
		  			      "next": ">>"
					},
					"lengthMenu" : "Hiển thị _MENU_ bản ghi",
					"zeroRecords" : "Nothing found - sorry",
					"info" : "",
					"infoEmpty" : "No records available",
					"infoFiltered" : "(filtered from _MAX_ total records)"
				}
			});
		});
	</script>
	<!-- Custom Js -->
	<script src="../../assets/js/custom-scripts.js"></script>

</body>
</html>
