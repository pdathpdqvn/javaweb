<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int role = (int) session.getAttribute("role");
	if(session.getAttribute("usercheck")==null || role != 0){
		response.sendRedirect(request.getContextPath()+"/index");
	}
	String fullname =(String) session.getAttribute("fullname");
	String email = (String) session.getAttribute("email");
	String roleName;
	if(role ==1){
		roleName ="Quyền người dùng";
	}else{
		roleName ="Quyền Admin";
	}
%>
<header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index" class="logo d-flex align-items-center">
        <img src="https://cdn.haitrieu.com/wp-content/uploads/2022/05/Icon-Phat-Dat.png" alt="">
        <span class="d-none d-lg-block">Pdat's Shop</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">


        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="https://img.icons8.com/ios/256/user--v1.png" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2">${fullname} </span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6> Xin chào: ${fullname} </h6>
              <span>Địa chỉ Email: ${email} </span>
              
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            
            <li>
              <a class="dropdown-item d-flex align-items-center" href="logout">
                <i class="bi bi-box-arrow-right"></i>
                <span>Đăng xuất</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header>