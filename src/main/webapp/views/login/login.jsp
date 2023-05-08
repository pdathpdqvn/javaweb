<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/views/login/assets" var="url"></c:url>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Đăng nhập</title>
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

  <!-- =======================================================
  * Template Name: NiceAdmin - v2.4.1
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
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
                  <span class="d-none d-lg-block">Pdat's Shop</span>
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Đăng nhập</h5>                    
                  </div>

                  <form action="login" method="post" class="row g-3 needs-validation" novalidate>
					<div>
						<p class="text-danger">${errorMsg}</p>
						<p class="text-danger">${signok}</p>
					</div>
                    <div class="col-12">
                      <label for="yourUsername" class="form-label">Email</label>
                      <div class="input-group has-validation">
                        <span class="input-group-text" id="inputGroupPrepend">@</span>
                        <input type="text" name="email" class="form-control" required>
                      </div>
                    </div>

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">Mật khẩu</label>
                      <input type="password" name="password" class="form-control"  required>
                    </div>

                    <div class="col-12">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="remember" value="true" id="rememberMe">
                        <label class="form-check-label" for="rememberMe">Ghi nhớ mật khẩu?</label>
                      </div>
                    </div>
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">Đăng nhập</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0">Bạn quên mật khẩu? <a href="signup">Tạo tài khoản</a></p>
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
  <script src="${url}/vendor/chart.js/chart.min.js"></script>
  <script src="${url}/vendor/echarts/echarts.min.js"></script>
  <script src="${url}/vendor/quill/quill.min.js"></script>
  <script src="${url}/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="${url}/vendor/tinymce/tinymce.min.js"></script>
  <script src="${url}/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="${url}/js/main.js"></script>

</body>

</html>