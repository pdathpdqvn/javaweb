<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<footer class="bg3 p-t-75 p-b-32">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Loại sản phẩm
					</h4>
					
					<ul>
					<c:forEach items="${requestScope.categories}" var="category">
						<li class="p-b-10">
							<a href="category?categoryId=${category.categoryId }" class="stext-107 cl7 hov-cl1 trans-04">
								${category.categoryName}
							</a>
						</li>
					</c:forEach>
						
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50" >
					<h4 class="stext-301 cl0 p-b-30">
						Bản đồ
					</h4>
					<div>
					<iframe height="200" width="200" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d24874.887814159494!2d105.82614277135612!3d21.013910446039926!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab3575f63de5%3A0x2af51048323df062!2zxJDDoG8gVOG6oW8gSXRwbHVzIEFjYWRlbXk!5e0!3m2!1svi!2s!4v1681823266519!5m2!1svi!2s"  style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
					
					</div>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Về chúng tôi
					</h4>

					<p class="stext-107 cl7 size-201">
						Địa chỉ: Đào Tạo Itplus Academy 51 P. Lê Đại Hành, P, Hai Bà Trưng, Hà Nội 113900
					</p>

					<div class="p-t-27">
						<a href="https://www.facebook.com/HocvienITPlusAcademy" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-facebook"></i>
						</a>

						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-instagram"></i>
						</a>

						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-pinterest-p"></i>
						</a>
					</div>
				</div>
				<div class="col-sm-6 col-lg-3 p-b-50" >
					<h4 class="stext-301 cl0 p-b-30">
						Taị sao nên chọn chúng tôi
					</h4>
					<p class="stext-107 cl7 size-201">
						Pdat's shop mang tới cho bạn lựa chọn sản phẩm máy tính tiêu dùng hiểu quả nhất
					</p>
				</div>
			</div>

		</div>
	</footer>
