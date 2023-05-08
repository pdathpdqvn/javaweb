<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/views/login/assets" var="url"></c:url>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Đăng ký</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="https://cdn.haitrieu.com/wp-content/uploads/2022/05/Icon-Phat-Dat.png" rel="icon">
  <link href="${url}/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${url}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${url}/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="${url}/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${url}/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="${url}/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="${url}/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="${url}/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${url}/css/style.css" rel="stylesheet">

</head>

<body>

  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="index" class="logo d-flex align-items-center w-auto">
                  <img src="https://cdn.haitrieu.com/wp-content/uploads/2022/05/Icon-Phat-Dat.png" alt="">
                  <span class="d-none d-lg-block">

Đăng ký

</span>
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Tạo tài khoản</h5>
                    <p class="text-center small">Nhập thông tin của bạn</p>
                  </div>

                  <form class="row g-3 needs-validation" novalidate action="signup" method="post">
                  	 <div>
						 <p class="text-danger">${loi}</p>
						 <p class="text-danger">${signok}</p>
						 </div>

						 
					<div class="col-12">
                      <label for="yourUserId" class="form-label">Id</label>
                      <input type="text" name="userId" class="form-control" id="yourUserId" required>
                      <div class="invalid-feedback">Vui lòng nhập Id của bạn!</div>
                    </div>
			
                    <div class="col-12">
                    
                      <label for="yourName" class="form-label">Tên của bạn</label>
                      <input type="text" name="fullname" class="form-control" id="yourName" required>
                      <div class="invalid-feedback">Vui lòng nhập tên của bạn!</div>
                    </div>
					
                    <div class="col-12">
                      <label for="yourEmail" class="form-label">Email</label>
                      <input type="email" name="email" class="form-control" id="yourEmail" required>
                      <div class="invalid-feedback">Vui lòng nhập địa chỉ email của bạn!</div>
                    </div>
                    
					<div class="col-12">
                      <label for="yourPhone" class="form-label">Số điển thoại</label>
                      <input type="text" name="phone" class="form-control" id="yourPhone" required>
                      <div class="invalid-feedback">Vui lòng nhập số điện thoại của bạn!</div>
                    </div>
                    
                    <div class="col-12">
                      <label for="yourAddress" class="form-label">Địa chỉ</label>
                      <input type="text" name="address" class="form-control" id="yourAddress" required>
                      <div class="invalid-feedback">Vui lòng nhập địa chỉ của bạn!</div>
                    </div>
                    
                    <div class="col-12">
                      <label for="yourPassword" class="form-label">Mật khẩu</label>
                      <input type="password" name="password" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Vui lòng nhập mật khẩu!</div>
                    </div>
                    
                    <div class="col-12">
                      <label for="yourRePassword" class="form-label">Nhập lại khẩu</label>
                      <input type="password" name="repassword" class="form-control" id="yourRePassword" required>
                      <div class="invalid-feedback">Vui lòng lại nhập mật khẩu!</div>
                    </div>
                    
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">Tạo tài khoản</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0">Bạn đã có tài khoản? <a href="login">Đăng nhập</a></p>
                    </div>
                  </form>

                </div>
              </div>



            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="${url}/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="${url}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${url}/vendor/chart.js/chart.umd.js"></script>
  <script src="${url}/vendor/echarts/echarts.min.js"></script>
  <script src="${url}/vendor/quill/quill.min.js"></script>
  <script src="${url}/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="${url}/vendor/tinymce/tinymce.min.js"></script>
  <script src="${url}/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="${url}/js/main.js"></script>

</body>

</html>
