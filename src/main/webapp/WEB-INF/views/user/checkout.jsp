<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@page import="java.io.PrintWriter"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<jsp:include page="common/head.jsp"></jsp:include>
<body>

	<jsp:include page="common/header.jsp"></jsp:include>
	<div class="single-product-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">

				<div class="col">
					<div class="product-content-right">
						<div class="woocommerce">
						<!-- 	<form enctype="multipart/form-data" action="#" class="checkout"
								method="post" name="checkout"> -->
								<div id="customer_details" class="col2-set">
									<div class="col-1">
										<div class="woocommerce-billing-fields">
											<h3>Thông tin khách hàng</h3>
											<p id="billing_first_name_field"
												class="form-row form-row-first validate-required">
												<label class="" for="billing_first_name">Họ và tên </label>
												<input disabled="disabled" type="text" value="${account.fullName }" placeholder=""
													id="billing_first_name" name="billing_first_name"
													class="input-text ">
											</p>
											<div class="clear"></div>

											<p id="billing_address_1_field"
												class="form-row form-row-wide address-field validate-required">
												<label class="" for="billing_address_1">Địa chỉ </label> <input
													disabled="disabled" type="text" value="${account.address }" placeholder="Ghi rõ số nhà"
													id="billing_address_1" name="billing_address_1"
													class="input-text ">
											</p>

											<p id="billing_phone_field"
												class="form-row form-row-last validate-required validate-phone">
												<label class="" for="billing_phone">Số điện thoại </label> <input
												disabled="disabled" type="text" value="${account.phonenumber }" class="input-text ">
											</p>
											<div class="clear"></div>
										</div>
									</div>
								</div>

								<h3 id="order_review_heading">Các mặt hàng bạn đã chọn</h3>
								<div id="order_review" style="position: relative;">
									<table class="shop_table">
										<thead>
											<tr>
												<th class="product-name">Sản phẩm</th>
												<th class="product-price">Giá</th>
												<th class="product-quantity">Số lượng</th>
												<th class="product-total">Tổng</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="c" items="${cart}">
												<tr>
													<td>${c.value.product.name}</td>
													<td>${c.value.product.price}đ</td>
													<td>${c.value.quantity}</td>
													<td>${c.value.product.price*c.value.quantity}</td>
												</tr>
											</c:forEach>
										</tbody>

									</table>
									<div id="payment">
										<div class="form-row place-order">
											<form action="<c:url value='/checkout' /> " method="post" >
												<input type="submit" data-value="Place order"
													value="Đặt hàng ngay" id="place_order"
													name="woocommerce_checkout_place_order" class="button alt">
											</form>
										</div>
										<div class="clear"></div>
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