<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<jsp:include page="common/head.jsp"></jsp:include>
<body>
	<jsp:include page="common/header.jsp"></jsp:include>
	<div class="slider-area">
		<!-- Slider -->
		<div class="block-slider block-slider4">
			<ul class="" id="bxslider-home4">
				<li><img src="img/cui1.jpg" alt="Slide">
					<div class="caption-group">
						<h2 class="caption title">
							Cũi gỗ trắng <span class="primary">Cao cấp</span>
						</h2>
						<h4 class="caption subtitle">Dùng cho bé dưới 3 tuổi</h4>
						<a class="caption button-radius" href="#"><span class="icon"></span>Mua
							ngay</a>
					</div></li>

				<li><img src="img/quay5.jpg" alt="Slide">
					<div class="caption-group">
						<h2 class="caption title">
							Quây nhựa <span class="primary">Cao cấp</span>
						</h2>
						<h4 class="caption subtitle">Dùng cho bé dưới 3 tuổi</h4>
						<a class="caption button-radius" href="#"><span class="icon"></span>Mua
							ngay</a>
					</div></li>

				<li><img src="img/nem4.jpg" alt="Slide">
					<div class="caption-group">
						<h2 class="caption title">
							Nệm chống lăn <span class="primary">Cao cấp</span>
						</h2>
						<h4 class="caption subtitle">Mền nhẹ, êm ái</h4>
						<a class="caption button-radius" href="#"><span class="icon"></span>Mua
							ngay</a>
					</div></li>

				<li><img src="img/ss2.jpg" alt="Slide">
					<div class="caption-group">
						<h2 class="caption title">
							Bộ đồ sơ sinh <span class="primary">Kute</span>
						</h2>
						<h4 class="caption subtitle">Dùng cho bé dưới 3 tuổi</h4>
						<a class="caption button-radius" href="#"><span class="icon"></span>Mua
							ngay</a>
					</div></li>
			</ul>
		</div>
		<!-- ./Slider -->
	</div>
	<div class="brands-area">
		<h3 style="color: black; margin-left: 100px;">Danh mục loại sản
			phẩm</h3>
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="brand-wrapper">
						<div class="brand-list">
							<img src="img/cui1.jpg" alt=""> <img src="img/quay5.jpg"
								alt=""> <img src="img/nem4.jpg"> <img
								src="img/ss2.jpg" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End brands area -->


	<!-- End slider area -->

	<div class="promo-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="single-promo promo1">
						<i class="fa fa-refresh"></i>
						<p>15 Ngày đổi trả</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="single-promo promo2">
						<i class="fa fa-truck"></i>
						<p>Free Toàn quốc</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="single-promo promo3">
						<i class="fa fa-lock"></i>
						<p>Uy tín - Chất lượng</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="single-promo promo4">
						<i class="fa fa-gift"></i>
						<p>Tặng phẩm</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End promo area -->

	<div class="maincontent-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="latest-product">
						<h3>Sản phẩm hot</h3>
						<div class="product-carousel">

							<!-- Sản phẩm -->
							<c:forEach var="p" items="${products}">

								<div class="single-product">

									<div class="product-f-image" style="height: 250px">
										<img src="img/${ p.image }" style="padding: 9px 0;">
										<div class="product-hover">
											<a href="<c:url value='/detailProduct?id=${p.id }'/> "
												class="view-details-link" style="font-size: 12px;"> <i class="fa fa-link"></i>
												Chi tiết sản phẩm
											</a> 
											<%-- <a href="<c:url value='/cart?id=${p.id }'/>"
												class="add-to-cart-link"> <i class="fa fa-shopping-cart"></i>Thêm
												vào giỏ
											</a> --%>
										</div>
									</div>
									
									<!-- 	Thêm vào giỏ -->
									<form action="<c:url value="/cart"/>" method="post">
										<input type="hidden" name="code" value="${p.code}"> <input
											type="hidden" name="name" value="${p.name}"> <input
											type="hidden" name="image" value="${p.image}"> <input
											type="hidden" name="price" value="${p.price}"> <input
											type="hidden" name="description" value="${p.description}">
										<button class="btn btn-primary" name="action" value="add">Thêm
											vào giỏ</button>
									</form>
									<h2>
										<a href="">${ p.name }</a>
									</h2>

									<div class="product-carousel-price">
										<ins>${ p.price } đ</ins>
									</div>

								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End main content area -->


	<jsp:include page="common/footer.jsp"></jsp:include>

</body>
</html>