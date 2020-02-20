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
				<h1 class="page-header">Quản lý loại sản phẩm</h1>
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li class="active">Quản lý loại sản phẩm</li>
				</ol>
				<a class="btn btn-primary"
					href="<c:url value='/admin/newCategory' />" style="color: black;">Thêm
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
												<th>Mã sản phẩm</th>
												<th>Tên sản phẩm</th>
												<th>Trạng thái</th>
												<th>Hành động</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${listCategory}" var="c">
												<tr class="odd gradeX">

													<td>${c.id }</td>
													<td>${c.code }</td>
													<td>${c.name }</td>
													<td>${c.active }</td>
													<td>
														<!-- Hành động -->
														<form action="<c:url value="/admin/category"/>" method="post">
															<input type="hidden" name="id" value="${c.id}">
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
			$('#dataTables-example').dataTable();
		});
	</script>
	<!-- Custom Js -->
	<script src="../../assets/js/custom-scripts.js"></script>

</body>
</html>
