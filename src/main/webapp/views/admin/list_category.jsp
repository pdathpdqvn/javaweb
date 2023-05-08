<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="views/admin/assets" var="url"></c:url>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Quản lý loại sản phẩm</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="https://cdn.haitrieu.com/wp-content/uploads/2022/05/Icon-Phat-Dat.png" rel="icon">
<link href="${url}/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.js"></script>

<script>
    $(document).ready(function () {
        $('#myTable').DataTable({
            "pageLength": 100,
            "language": {
                "sProcessing": "Đang xử lý...",
                "sLengthMenu": "Xem _MENU_ mục",
                "sZeroRecords": "Không tìm thấy dòng nào phù hợp",
                "sInfo": "Đang xem _START_ đến _END_ trong tổng số _TOTAL_ mục",
                "sInfoEmpty": "Đang xem 0 đến 0 trong tổng số 0 mục",
                "sInfoFiltered": "(được lọc từ _MAX_ mục)",
                "sInfoPostFix": "",
                "sSearch": "Tìm:",
                "sUrl": "",
                "oPaginate": {
                    "sFirst": "Đầu",
                    "sPrevious": "Trước",
                    "sNext": "Tiếp",
                    "sLast": "Cuối"
                }
            }
        });
    });
</script>

</head>

<body>

	<!-- ======= Header ======= -->
	<%@include file="layout/header.jsp"%>
	<!-- End Header -->

	<%@include file="layout/sidebar.jsp" %>
	<!-- End Sidebar-->

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Quản lý loại sản phẩm</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index">Trang chủ</a></li>
					<li class="breadcrumb-item active">Quản lý danh mục</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Danh sách loại sản phẩm</h5>
							<a href="add_category" class="btn btn-primary mb-3">Thêm mới</a>
							<table id="myTable" class="table">
								<thead>
									<tr>
										<th scope="col">Mã loại sản phẩm</th>
										<th scope="col">Tên loại sản phẩm</th>
										<th scope="col">Trạng thái</th>
										<th scope="col">Chức năng</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${requestScope.categories}" var="c">
										<tr>
											<th scope="row">${c.categoryId}</th>
											<td>${c.categoryName}</td>
											<td>${c.status}</td>
											<td><a href="update_category?id=${c.categoryId}"><i
													class="fa-solid fa-pen-to-square"></i></a> | <a href="#"
												onclick="deleteCategory('${c.categoryId}')"><i
													class="fa-solid fa-trash"></i></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- End Default Table Example -->
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
	<script type="text/javascript">
		function deleteCategory(categoryId){
			if(confirm("Bạn có chắc chắn xóa "+categoryId)){
				window.location = "delete_category?id="+categoryId;
			}
		}
</script>

</body>

</html>