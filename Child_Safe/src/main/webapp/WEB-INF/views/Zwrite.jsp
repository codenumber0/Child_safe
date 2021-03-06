<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>ChildSafe</title>
<!-- plugins:css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/skydash/vendors/feather/feather.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/skydash/vendors/ti-icons/css/themify-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/skydash/vendors/css/vendor.bundle.base.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/skydash/css/vertical-layout-light/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/skydash/css/vertical-layout-light/table.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="${pageContext.request.contextPath}/resources/skydash/js/post.js"></script>
</head>

<body>
	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->
		<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
			<div
				class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
				<a class="navbar-brand brand-logo mr-5" href="Zindex.do"><b>ChildSafe</b></a>
			</div>
			<div
				class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
				<button class="navbar-toggler navbar-toggler align-self-center"
					type="button" data-toggle="minimize">
					<span class="icon-menu"></span>
				</button>
				<ul class="navbar-nav mr-lg-2">

				</ul>

				<button
					class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
					type="button" data-toggle="offcanvas">
					<span class="icon-menu"></span>
				</button>
			</div>
		</nav>

		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<nav class="sidebar sidebar-offcanvas" id="sidebar">
				<ul class="nav">
					<li class="nav-item"><a class="nav-link" href="Zindex.do">
							<i class="icon-grid menu-icon"></i> <span class="menu-title">???????????????</span>
					</a></li>

					<li class="nav-item"><a class="nav-link"
						data-toggle="collapse" href="#ui-basic" aria-expanded="false"
						aria-controls="ui-basic"> <i class="icon-layout menu-icon"></i>
							<span class="menu-title">????????? ?????? ??????</span> <i class="menu-arrow"></i>
					</a>
						<div class="collapse" id="ui-basic">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/buttons.html">Buttons</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/dropdowns.html">Dropdowns</a></li>
								<li class="nav-item"><a class="nav-link"
									href="pages/ui-features/typography.html">Typography</a></li>
							</ul>
						</div></li>

					<li class="nav-item"><a class="nav-link"
						data-toggle="collapse" href="#form-elements" aria-expanded="false"
						aria-controls="form-elements"> <i
							class="icon-columns menu-icon"></i> <span class="menu-title">?????????
								??????</span> <i class="menu-arrow"></i>
					</a>
						<div class="collapse" id="form-elements">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="pages/forms/basic_elements.html">Basic Elements</a></li>
							</ul>
						</div></li>

					<li class="nav-item"><a class="nav-link"
						data-toggle="collapse" href="#charts" aria-expanded="false"
						aria-controls="charts"> <i class="icon-bar-graph menu-icon"></i>
							<span class="menu-title">????????? ??????</span> <i class="menu-arrow"></i>
					</a>
						<div class="collapse" id="charts">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="pages/charts/chartjs.html">ChartJs</a></li>
							</ul>
						</div></li>

					<li class="nav-item"><a class="nav-link"
						data-toggle="collapse" href="#tables" aria-expanded="false"
						aria-controls="tables"> <i class="icon-grid-2 menu-icon"></i>
							<span class="menu-title">????????????</span> <i class="menu-arrow"></i>
					</a>
						<div class="collapse" id="tables">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link" href="Ztable.do">?????????</a></li>
								<li class="nav-item"><a class="nav-link" href="Ztable.do">?????????</a></li>
							</ul>
						</div></li>

					<li class="nav-item"><a class="nav-link"
						data-toggle="collapse" href="#auth" aria-expanded="false"
						aria-controls="auth"> <i class="icon-head menu-icon"></i> <span
							class="menu-title">????????????</span> <i class="menu-arrow"></i>
					</a>
						<div class="collapse" id="auth">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link" href="Zlogin.html">
										????????? </a></li>
								<li class="nav-item"><a class="nav-link" href="Zjoin.html">
										???????????? </a></li>
							</ul>
						</div></li>

				</ul>
			</nav>

			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="common_style">
							<div class="limiter">
								<div class="container-table100">
									<div class="wrap-table100">
										<div class="table100">
											<h2>????????? ??????</h2>
											<hr
												style="height: 5px; border: none; color: #e8bf12; background-color: #e8bf12;" />
											<br>
											<form class="contact100-form validate-form">

												<!-- ?????? -->
												<div class="wrap-input100 validate-input">
													<input class="input100" type="text" name="name"
														placeholder="??????"> <span class="focus-input100"></span>
												</div>

												<!-- ???????????? ???????????? ??????????????? ?????? -->
												<div class="wrap-input100 validate-input">
													<input class="input100" type="text" name="nick"
														placeholder="?????????"> <span class="focus-input100"></span>
												</div>

												<!-- ?????? -->
												<div class="wrap-input100 validate-input">
													<textarea class="input100" name="message" placeholder="??????"></textarea>
													<span class="focus-input100"></span>
												</div>

												<!-- ???????????? -->
												<div class="wrap-input100 validate-input">
													<input type="file" class="form-control text-white "
														style="border-radius: 31px; background-color: #6ebca8"
														placeholder="Enter full name" /> <span
														class="form-text text-muted"></span>
												</div>

												<div class="container-contact100-form-btn" id="confirmStart">
													<button class="contact100-form-btn">
														<a class="login100-form-btn"> <b style="color: #fff;">????????????</b>
														</a>
													</button>
												</div>
											</form>


										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>




		</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	<!-- content-wrapper ends -->
	<!-- partial:../../partials/_footer.html -->
	<footer class="footer">
		<div class="d-sm-flex justify-content-center justify-content-sm-between">
			<span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright ?? 2022. <a href="https://www.smhrd.or.kr/" target="_blank">Computer Science</a></span>
		</div>

	</footer>
	<!-- partial -->
	</div>
	<!-- main-panel ends -->
	</div>
	<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="${pageContext.request.contextPath}/resources/skydash/vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="${pageContext.request.contextPath}/resources/skydash/js/off-canvas.js"></script>
	<script src="${pageContext.request.contextPath}/resources/skydash/js/hoverable-collapse.js"></script>
	<script src="${pageContext.request.contextPath}/resources/skydash/js/template.js"></script>
	<script src="${pageContext.request.contextPath}/resources/skydash/js/settings.js"></script>

	<!-- endinject -->
	<!-- Custom js for this page-->
	<!-- End custom js for this page-->
</body>

</html>