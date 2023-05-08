<%@page import="java.util.List"%>
<%@page import="dao.ProductDAO"%>
<%@page import="model.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/views/client/assets" var="url"></c:url>
<%
	String address = (String) session.getAttribute("address");
	String phone = (String) session.getAttribute("phone");
	String fullname = (String) session.getAttribute("fullname");
	ArrayList<Cart> cart_list = (ArrayList<Cart>)session.getAttribute("cart-list");
	List<Cart> cartProduct = null;
	if(cart_list != null){
		ProductDAO productDAO = new ProductDAO();
		cartProduct = productDAO.getCartProducts(cart_list);
		double total = productDAO.getTotalCartPrice(cart_list);
		request.setAttribute("cart-list", cart_list);
		request.setAttribute("cartProduct", cartProduct);
		request.setAttribute("total", total);
		
	}
%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Giỏ hàng</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="https://cdn.haitrieu.com/wp-content/uploads/2022/05/Icon-Phat-Dat.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${url}/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${url}/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${url}/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${url}/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${url}/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${url}/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${url}/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${url}/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${url}/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${url}/css/util.css">
<link rel="stylesheet" type="text/css" href="${url}/css/main.css">
<!--===============================================================================================-->
</head>
<body class="animsition">

	<!-- Header -->
	<%@include file="layout/header.jsp"%>
		





	<!-- Shoping Cart -->
	<form class="bg0 p-t-75 p-b-85" action="">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="wrap-table-shopping-cart">
							<table class="table-shopping-cart">
								<tr class="table_head">
									<th class="column-1">Sản phẩm</th>
									<th class="column-2"></th>
									<th class="column-3">Đơn giá</th>
									<th class="column-4">Số lượng</th>
									<th class="column-5">Chức năng</th>
									
								</tr>
								<c:forEach items="${cartProduct}" var="cart">
									<tr class="table_row">
										<td class="column-1">
											<div class="how-itemcart1">
												<img src="views/admin/assets/img/${cart.getImagePath()}" alt="IMG">
											</div>
										</td>
										<td class="column-2">${cart.getProductName()}</td>
										<td class="column-3">$ ${cart.getPrice()}</td>
										<td class="column-4">
											<div class="wrap-num-product flex-w m-l-auto m-r-0">
												<div
													class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
													<a href="quantity-inc-dec?acction=dec&id=${cart.getProductId()}"><i class="fs-16 zmdi zmdi-minus"></i></a>
												</div>

												<input class="mtext-104 cl3 txt-center num-product"
													type="number" name="num-product1" value="${cart.getQuantity()}">

												<div
													class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
													<a href="quantity-inc-dec?acction=inc&id=${cart.getProductId()}"><i class="fs-16 zmdi zmdi-plus"></i></a>
													
												</div>
											</div>
										</td>
										<td class="column-5"><a class="btn btn-sm btn danger" href="remove-from-cart?productId=${cart.productId}">Xóa</a></td>
									</tr>
								</c:forEach>
							</table>
						</div>

					</div>
				</div>

				<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
					<div
						class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h4 class="mtext-109 cl2 p-b-30">Thông tin thanh toán</h4>
						<div class="flex-w flex-t bor12 p-t-15 p-b-30">
	
							<div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
								
								<div class="p-t-15">
								<span class="stext-110 cl2"> Tổng tiền:$ ${total} </span>
								<br>
									<span class="stext-112 cl8"> Tên người nhận </span>


									<div class="bor8 bg0 m-b-12">
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text"
											name="fullname" value="${fullname}" >
									</div>
									<span class="stext-112 cl8"> Địa chỉ giao hàng </span>


									<div class="bor8 bg0 m-b-12">
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text"
											name="address" value="${address}" >
									</div>
									<span class="stext-112 cl8"> Số điện thoại </span>


									<div class="bor8 bg0 m-b-12">
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text"
											name="phone" value="${phone}">
									</div>
									

									<div class="flex-w">
										<div
											class="flex-c-m stext-101 cl2 size-115 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer">
											Update Totals</div>
									</div>

								</div>
							</div>
						</div>

						<div class="flex-w flex-t p-t-27 p-b-33">
							<div class="size-208">
								<span class="mtext-101 cl2"> Total: </span>
							</div>

							<div class="size-209 p-t-1">
								<span class="mtext-110 cl2"> $79.65 </span>
							</div>
						</div>

						<button
							class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
							Thanh toán</button>
					</div>
				</div>
			</div>
		</div>
	</form>



<%@include file="layout/footer.jsp"%>

	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

	<!--===============================================================================================-->
	<script src="${url}/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="${url}/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="${url}/vendor/bootstrap/js/popper.js"></script>
	<script src="${url}/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="${url}/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script src="${url}/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<!--===============================================================================================-->
	<script src="${url}/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="${url}/js/main.js"></script>

</body>
</html>