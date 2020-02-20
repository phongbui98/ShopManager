<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<jsp:include page="common/head.jsp"></jsp:include>
<body>
	<jsp:include page="common/header.jsp"></jsp:include>
	<div class="single-product-area">
		<div class="container" style="margin-top: 20px;">
			<div class="product-inner">
				<div class="row">
					<div class="col-2">
						<img alt="" src="img/${product.image}" width="500">
					</div>
					<div class="col-2" style="margin-top: 50px;">
						<h2 class="product-name">${product.name}</h2>
						<div class="product-inner-price">
							<ins>$ ${product.price}đ</ins>
						</div>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<!-- 	Thêm vào giỏ -->
						<form action="<c:url value="/cart"/>" method="post">
							<input type="hidden" name="code" value="${product.code}"> <input
								type="hidden" name="name" value="${product.name}"> <input
								type="hidden" name="image" value="${product.image}"> <input
								type="hidden" name="price" value="${product.price}"> <input
								type="hidden" name="description" value="${product.description}">
							<button class="btn btn-primary" name="action" value="add">Thêm
								vào giỏ</button>
						</form>
					</div>
					<div class="col-2">
						<div role="tabpanel" style="">
							<ul class="product-tab" role="tablist"
								style="padding-right: 179px">
								<li role="presentation" class="active"><a href="#home"
									aria-controls="home" role="tab" data-toggle="tab">Mô tả sản
										phẩm</a></li>
							</ul>
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane fade in active" id="home">
									<h2>Thông tin chi tiết</h2>
									<p>${product.description}</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>


	<jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>