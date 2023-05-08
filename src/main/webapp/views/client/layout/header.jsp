<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<header>
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- Topbar -->
			<div class="top-bar">
			
				<div class="content-topbar flex-sb-m h-full container">
					<div class="left-top-bar">
						Chào mừng ${sessionScope.usercheck.fullname} đến với shop máy tính PDat
					</div>

					<div class="right-top-bar flex-w h-full">
						<c:if test="${sessionScope.usercheck == null}">
						<a href="login" class="flex-c-m trans-01 p-lr-25">
							Đăng nhập
						</a>
						
						</c:if>					
						
						<c:if test="${sessionScope.usercheck != null}">
						<c:if test="${sessionScope.usercheck.role == 0}">
						<a href="list_product" class="flex-c-m trans-01 p-lr-25">
							Quản lý
						</a>
						</c:if>
						<a href="logout" class="flex-c-m trans-01 p-lr-25">
							Đăng xuất
						</a>
						</c:if>	
					</div>

				</div>
			</div>

			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop container">
					
					<!-- Logo desktop -->		
					<a href="index" class="logo">
						<img src="https://cdn.haitrieu.com/wp-content/uploads/2022/05/Icon-Phat-Dat.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							



							<li class="label1" data-label1="hot">
								<a href="index">Trang chủ</a>
							</li>
							<li class="active-menu">
								<a href="productov">Sản phẩm</a>
								<ul class="sub-menu">
								
								<c:forEach items="${requestScope.categories}" var="category" >
									<li><a href="category?categoryId=${category.categoryId }">${category.categoryName}</a></li>
								
								</c:forEach>
									
								</ul>
							</li>

						</ul>
					</div>	

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m">
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
							<i class="zmdi zmdi-search"></i>
						</div>

						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 ">
							 <a href="cart"><i class="zmdi zmdi-shopping-cart"></i></a>
						</div>


					</div>
				</nav>
			</div>	
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->		
			<div class="logo-mobile">
				<a href="index"><img src="https://cdn.haitrieu.com/wp-content/uploads/2022/05/Icon-Phat-Dat.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m m-r-15">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>

				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" >
					
				</div>

			</div>


		</div>


		
		<!-- Modal Search -->
		<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="${url}/images/icons/icon-close2.png" alt="CLOSE">
				</button>

				<form class="wrap-search-header flex-w p-l-15" action="search" method="get">
					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
					<input class="plh3" type="text" name="search" placeholder="Search...">
				</form>
			</div>
		</div>
	</header>