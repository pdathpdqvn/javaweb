<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="views/admin/assets" var="url"></c:url>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Cập nhật sản phẩm</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="https://cdn.haitrieu.com/wp-content/uploads/2022/05/Icon-Phat-Dat.png" rel="icon">
<link href="${url}/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="${url}/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${url}/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="${url}/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="${url}/vendor/quill/quill.snow.css" rel="stylesheet">
<link href="${url}/vendor/quill/quill.bubble.css" rel="stylesheet">
<link href="${url}/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="${url}/vendor/simple-datatables/style.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="${url}/css/style.css" rel="stylesheet">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
 <script src="https://cdn.ckeditor.com/4.21.0/standard/ckeditor.js"></script>
</head>

<body>
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	
	<!-- ======= Header ======= -->
	 <%@include file="layout/header.jsp" %>
	<!-- End Header -->

	<!-- ======= Sidebar ======= -->
	<%@include file="layout/sidebar.jsp" %>
	<!-- End Sidebar-->

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Cập nhật sản phẩm</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index">Trang chủ</a></li>
					<li class="breadcrumb-item active">Quản lý sản phẩm</li>
					<li class="breadcrumb-item active">Cập nhật sản phẩm</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Cập nhật sản phẩm</h5>
							<form action="update_product" method="post">
								<div class="row mb-3">
									<label for="" class="col-sm-2 col-form-label">Mã sản phẩm</label>
									<div class="col-sm-10">
										<input type="number" name="productId" class="form-control" value="${product.productId}" >
									</div>
								</div>
								<div class="row mb-3">
									<label for="" class="col-sm-2 col-form-label">Tên sản phẩm</label>
									<div class="col-sm-10">
										<input type="text" name="productName" class="form-control" value="${product.productName}" >
									</div>
								</div>
								<div class="row mb-3">
									<label for="" class="col-sm-2 col-form-label">Ảnh</label>
									<div class="col-sm-10">
										<input type="file" name="image" class="form-control" value="${product.imagePath}">
									</div>
								</div>
								<div class="row mb-3">
									<label for="" class="col-sm-2 col-form-label">Giá bán</label>
									<div class="col-sm-10">
										<input type="number" name="price" class="form-control" value="${product.price}">
									</div>
								</div>
								<div class="row mb-3">
									<label for="" class="col-sm-2 col-form-label">Giá nhập</label>
									<div class="col-sm-10">
										<input type="number" name="originalPrice" class="form-control" value="${product.originalPrice}">
									</div>
								</div>
								
								<div class="row mb-3">
									<label for="" class="col-sm-2 col-form-label">Mô tả</label>
									<div class="col-sm-10">
										<textarea name="editor1" >${product.description}"</textarea>		
										<script>
										CKEDITOR.replace('editor1');
									</script>																
									</div>
									
								</div>

								<div class="row mb-3">
									<legend class="col-form-label col-sm-2 pt-0">Trạng thái</legend>
									<div class="col-sm-10">

										<div class="form-check">
											<input class="form-check-input" name="status" value="1" type="checkbox"> <label class="form-check-label"
												for="gridCheck1"> Active </label>
										</div>

									</div>
								</div>
								
								<div class="row mb-3">
									<label for="" class="col-sm-2 col-form-label">Loại sản phẩm</label>
									<div class="col-sm-10">
										<select name="category" class="form-control">
    										<c:forEach items="${categories}" var="category">
        										<option value="${category.categoryId}">${category.categoryName}</option>
    										</c:forEach>
										</select>
									</div>
								</div>
								
								<div class="row mb-3">
									
									<div class="col-sm-10 offset-sm-2">
										<button type="submit" class="btn btn-primary">Lưu</button>
									</div>
								</div>

							</form>
							<!-- End General Form Elements -->
						</div>
					</div>
				</div>
			</div>
		</section>

	</main>
	<!-- End #main -->


	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="${url}/vendor/apexcharts/apexcharts.min.js"></script>
	<script src="${url}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="${url}/vendor/chart.js/chart.min.js"></script>
	<script src="${url}/vendor/echarts/echarts.min.js"></script>
	<script src="${url}/vendor/quill/quill.min.js"></script>
	<script src="${url}/vendor/simple-datatables/simple-datatables.js"></script>
	<script src="${url}/vendor/tinymce/tinymce.min.js"></script>
	<script src="${url}/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="${url}/js/main.js"></script>
c
</body>

</html>