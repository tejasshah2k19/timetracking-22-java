<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<jsp:include page="AllCss.jsp"></jsp:include>


</head>


<body themebg-pattern="theme1">
	<div id="pcoded" class="pcoded iscollapsed" nav-type="st2"
		theme-layout="vertical" vertical-placement="left"
		vertical-layout="wide" pcoded-device-type="desktop"
		vertical-nav-type="expanded" vertical-effect="shrink"
		vnavigation-view="view1" fream-type="theme1" layout-type="light">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">

		<jsp:include page="AdminHeader.jsp"></jsp:include>
			
		<jsp:include page="AdminSideBar.jsp"></jsp:include>

			<div class="showChat_inner">
				<div class="media chat-inner-header">
					<a class="back_chatBox"> <i class="feather icon-x"></i>
						Josephin Doe
					</a>
				</div>
				<div class="slimScrollDiv"
					style="position: relative; overflow: hidden; width: auto; height: 725px;">
					<div class="main-friend-chat"
						style="overflow: hidden; width: auto; height: 725px;">
						<div class="media chat-messages">
							<a class="media-left photo-table" href="#!"> <img
								class="media-object img-radius img-radius m-t-5"
								src="jpg/avatar-2.jpg" alt="Generic placeholder image">
							</a>
							<div class="media-body chat-menu-content">
								<div class="">
									<p class="chat-cont">I'm just looking around. Will you tell
										me something about yourself?</p>
								</div>
								<p class="chat-time">8:20 a.m.</p>
							</div>
						</div>
						<div class="media chat-messages">
							<div class="media-body chat-menu-reply">
								<div class="">
									<p class="chat-cont">Ohh! very nice</p>
								</div>
								<p class="chat-time">8:22 a.m.</p>
							</div>
						</div>
						<div class="media chat-messages">
							<a class="media-left photo-table" href="#!"> <img
								class="media-object img-radius img-radius m-t-5"
								src="jpg/avatar-2.jpg" alt="Generic placeholder image">
							</a>
							<div class="media-body chat-menu-content">
								<div class="">
									<p class="chat-cont">can you come with me?</p>
								</div>
								<p class="chat-time">8:20 a.m.</p>
							</div>
						</div>
					</div>
					<div class="slimScrollBar"
						style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div>
					<div class="slimScrollRail"
						style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
				</div>
				<div class="chat-reply-box">
					<div class="right-icon-control">
						<div class="input-group input-group-button">
							<input type="text" class="form-control"
								placeholder="Write hear . . ">
							<div class="input-group-append">
								<button class="btn btn-primary waves-effect waves-light"
									type="button">
									<i class="feather icon-message-circle"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="pcoded-main-container" style="margin-top: 70.3906px;">
				<div class="pcoded-wrapper">

					<nav class="pcoded-navbar" navbar-theme="theme1"
						active-item-theme="theme1" sub-item-theme="theme2"
						active-item-style="style0" pcoded-navbar-position="fixed">
						<div class="nav-list">
							<div class="slimScrollDiv"
								style="position: relative; overflow: hidden; width: 100%; height: 100%;">
								<div class="pcoded-inner-navbar main-menu"
									style="overflow: hidden; width: 100%; height: 100%;">
									<div class="pcoded-navigation-label" menu-title-theme="theme1">Navigation</div>










									<ul class="pcoded-item pcoded-left-item" item-border="true"
										item-border-style="solid" subitem-border="false">



									</ul>

									<ul class="pcoded-item pcoded-left-item" item-border="true"
										item-border-style="solid" subitem-border="false">
										<li class=""><a href="todo.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"> <i
													class="feather icon-bookmark"></i>
											</span> <span class="pcoded-mtext">To-Do</span>
										</a></li>
									</ul>




								</div>
								<div class="slimScrollBar"
									style="background: rgb(0, 0, 0); width: 5px; position: absolute; top: 21px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px; height: 496.82px;"></div>
								<div class="slimScrollRail"
									style="width: 5px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
							</div>
						</div>
					</nav>

					<div class="pcoded-content">

						<div class="page-header card">
							<div class="row align-items-end">
								<div class="col-lg-8">
									<div class="page-header-title">
										<i class="feather icon-home bg-c-blue"></i>
										<div class="d-inline">
											<h5>Dashboard CRM</h5>
											<span>lorem ipsum dolor sit amet, consectetur
												adipisicing elit</span>
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="page-header-breadcrumb">
										<ul class=" breadcrumb breadcrumb-title">
											<li class="breadcrumb-item"><a href="index.html"><i
													class="feather icon-home"></i></a></li>
											<li class="breadcrumb-item"><a href="#!">Dashboard
													CRM</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>

						<div class="pcoded-inner-content">
							<div class="main-body">
								<div class="page-wrapper">
									<div class="page-body">

										<div class="row">

											<div class="col-xl-3 col-md-6">
												<div class="card prod-p-card card-red">
													<div class="card-body">
														<div class="row align-items-center m-b-30">
															<div class="col">
																<h6 class="m-b-5 text-white">Total Profit</h6>
																<h3 class="m-b-0 f-w-700 text-white">$1,783</h3>
															</div>
															<div class="col-auto">
																<i class="fas fa-money-bill-alt text-c-red f-18"></i>
															</div>
														</div>
														<p class="m-b-0 text-white">
															<span class="label label-danger m-r-10">+11%</span>From
															Previous Month
														</p>
													</div>
												</div>
											</div>
											<div class="col-xl-3 col-md-6">
												<div class="card prod-p-card card-blue">
													<div class="card-body">
														<div class="row align-items-center m-b-30">
															<div class="col">
																<h6 class="m-b-5 text-white">Total Orders</h6>
																<h3 class="m-b-0 f-w-700 text-white">15,830</h3>
															</div>
															<div class="col-auto">
																<i class="fas fa-database text-c-blue f-18"></i>
															</div>
														</div>
														<p class="m-b-0 text-white">
															<span class="label label-primary m-r-10">+12%</span>From
															Previous Month
														</p>
													</div>
												</div>
											</div>
											<div class="col-xl-3 col-md-6">
												<div class="card prod-p-card card-green">
													<div class="card-body">
														<div class="row align-items-center m-b-30">
															<div class="col">
																<h6 class="m-b-5 text-white">Average Price</h6>
																<h3 class="m-b-0 f-w-700 text-white">$6,780</h3>
															</div>
															<div class="col-auto">
																<i class="fas fa-dollar-sign text-c-green f-18"></i>
															</div>
														</div>
														<p class="m-b-0 text-white">
															<span class="label label-success m-r-10">+52%</span>From
															Previous Month
														</p>
													</div>
												</div>
											</div>
											<div class="col-xl-3 col-md-6">
												<div class="card prod-p-card card-yellow">
													<div class="card-body">
														<div class="row align-items-center m-b-30">
															<div class="col">
																<h6 class="m-b-5 text-white">Product Sold</h6>
																<h3 class="m-b-0 f-w-700 text-white">6,784</h3>
															</div>
															<div class="col-auto">
																<i class="fas fa-tags text-c-yellow f-18"></i>
															</div>
														</div>
														<p class="m-b-0 text-white">
															<span class="label label-warning m-r-10">+52%</span>From
															Previous Month
														</p>
													</div>
												</div>
											</div>



















										</div>

									</div>
								</div>
							</div>
						</div>
					</div>

					<div id="styleSelector"></div>

				</div>
			</div>
		</div>
	</div>


	<!--[if lt IE 10]>
    <div class="ie-warning">
        <h1>Warning!!</h1>
        <p>You are using an outdated version of Internet Explorer, please upgrade
            <br/>to any of the following web browsers to access this website.
        </p>
        <div class="iew-container">
            <ul class="iew-download">
                <li>
                    <a href="http://www.google.com/chrome/">
                        <img src="../files/assets/images/browser/chrome.png" alt="Chrome">
                        <div>Chrome</div>
                    </a>
                </li>
                <li>
                    <a href="https://www.mozilla.org/en-US/firefox/new/">
                        <img src="../files/assets/images/browser/firefox.png" alt="Firefox">
                        <div>Firefox</div>
                    </a>
                </li>
                <li>
                    <a href="http://www.opera.com">
                        <img src="../files/assets/images/browser/opera.png" alt="Opera">
                        <div>Opera</div>
                    </a>
                </li>
                <li>
                    <a href="https://www.apple.com/safari/">
                        <img src="../files/assets/images/browser/safari.png" alt="Safari">
                        <div>Safari</div>
                    </a>
                </li>
                <li>
                    <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                        <img src="../files/assets/images/browser/ie.png" alt="">
                        <div>IE (9 & above)</div>
                    </a>
                </li>
            </ul>
        </div>
        <p>Sorry for the inconvenience!</p>
    </div>
<![endif]-->


	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/popper.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>

	<script src="js/waves.min.js" type="text/javascript"></script>

	<script type="text/javascript" src="js/jquery.slimscroll.js"></script>

	<script src="js/jquery.flot.js" type="text/javascript"></script>
	<script src="js/jquery.flot.categories.js" type="text/javascript"></script>
	<script src="js/curvedlines.js" type="text/javascript"></script>
	<script src="js/jquery.flot.tooltip.min.js" type="text/javascript"></script>

	<script src="js/amcharts.js" type="text/javascript"></script>
	<script src="js/serial.js" type="text/javascript"></script>
	<script src="js/light.js" type="text/javascript"></script>

	<script src="js/markerclusterer.js" type="text/javascript"></script>
	<script type="text/javascript"
		src="https://maps.google.com/maps/api/js?sensor=true"></script>
	<script type="text/javascript" src="js/gmaps.js"></script>

	<script src="js/pcoded.min.js" type="text/javascript"></script>
	<script src="js/vertical-layout.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/crm-dashboard.min.js"></script>
	<script type="text/javascript" src="js/script.min.js"></script>

	<script async=""
		src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"
		type="text/javascript"></script>
	<script type="text/javascript">
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-23581568-13');
	</script>


	<!-- Mirrored from colorlib.com/polygon/admindek/default/dashboard-crm.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 12 Dec 2019 16:08:32 GMT -->

	<div class="flotTip"
		style="display: none; position: absolute; background: rgb(255, 255, 255); z-index: 1040; padding: 0.4em 0.6em; border-radius: 0.5em; font-size: 0.8em; border: 1px solid rgb(17, 17, 17); white-space: nowrap;"></div>
</body>

</html>