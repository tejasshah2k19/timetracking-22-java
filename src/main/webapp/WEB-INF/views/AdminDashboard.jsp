<%@page import="com.bean.ProjectBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>Admin Dashboard</title>
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
<!-- 		    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>
 -->



			<div class="pcoded-main-container" style="margin-top: 70.3906px;">
				<div class="pcoded-wrapper">

					<jsp:include page="AdminSideBar.jsp"></jsp:include>


					<div class="pcoded-content">

						<div class="page-header card">
							<div class="row align-items-end">
								<div class="col-lg-8">
									<div class="page-header-title">
										<i class="feather icon-home bg-c-blue"></i>
										<div class="d-inline">
											<h5>Welcome , ${user.firstName}</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="page-header-breadcrumb">
										<ul class=" breadcrumb breadcrumb-title">
											<li class="breadcrumb-item"><a href="index.html"><i
													class="feather icon-home"></i></a></li>
											<li class="breadcrumb-item"><a href="#!">Dashboard
													</a></li>
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
																<h6 class="m-b-5 text-white">Total Members</h6>
																<h3 class="m-b-0 f-w-700 text-white">${totalUserCount}</h3>
															</div>
															<div class="col-auto">
																<i class="fas fa-money-bill-alt text-c-red f-18"></i>
															</div>
														</div>
														<p class="m-b-0 text-white">
															<span class="label label-danger m-r-10"></span>
														</p>
													</div>
												</div>
											</div>
											<div class="col-xl-3 col-md-6">
												<div class="card prod-p-card card-blue">
													<div class="card-body">
														<div class="row align-items-center m-b-30">
															<div class="col">
																<h6 class="m-b-5 text-white">On Board Developers</h6>
																<h3 class="m-b-0 f-w-700 text-white">${totalDeveloperCount}</h3>
															</div>
															<div class="col-auto">
																<i class="fas fa-database text-c-blue f-18"></i>
															</div>
														</div>
														<p class="m-b-0 text-white">
															<span class="label label-primary m-r-10">
																<!-- +12% -->
															</span>
															<!-- From
															Previous Month -->
														</p>
													</div>
												</div>
											</div>
											<div class="col-xl-3 col-md-6">
												<div class="card prod-p-card card-green">
													<div class="card-body">
														<div class="row align-items-center m-b-30">
															<div class="col">
																<h6 class="m-b-5 text-white">Ongoing Project</h6>
																<h3 class="m-b-0 f-w-700 text-white">${totalOnGoingProject}</h3>
															</div>
															<div class="col-auto">
																<i class="fas fa-dollar-sign text-c-green f-18"></i>
															</div>
														</div>
														<p class="m-b-0 text-white">
															<span class="label label-success m-r-10"></span>
														</p>
													</div>
												</div>
											</div>
											<div class="col-xl-3 col-md-6">
												<div class="card prod-p-card card-yellow">
													<div class="card-body">
														<div class="row align-items-center m-b-30">
															<div class="col">
																<h6 class="m-b-5 text-white">Pipeline Projects</h6>
																<h3 class="m-b-0 f-w-700 text-white">${totalpipelineProject}</h3>
															</div>
															<div class="col-auto">
																<i class="fas fa-tags text-c-yellow f-18"></i>
															</div>
														</div>
														<p class="m-b-0 text-white">
															<span class="label label-warning m-r-10">
																<!-- +52% -->
															</span>
															<!-- From
															Previous Month -->
														</p>
													</div>
												</div>
											</div>






















										</div>
		
		
										<!-- chart -->
										<div class="row">
										<div class="col-xl-6 col-md-6">
												<div class="card prod-p-card">
													<div class="card-body">
														
 
 															    <canvas id="myChart" width="400" height="400"></canvas>
 															


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


	<jsp:include page="AllJs.jsp"></jsp:include>
	<script type="text/javascript" src="js/chart.js"></script>

	<%
		
		List<ProjectBean> projects = (List<ProjectBean>)request.getAttribute("projects");
	
	%>
 <script>
    const ctx = document.getElementById('myChart').getContext('2d');
    const myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            
        	labels: [ 
    			<% for(ProjectBean p:projects){%>
    				'<%=p.getTitle()%>',
    			
    			<%}%>
        		
        	],
            
            datasets: [{
                label: 'Projects-Hours',
                data: [ 
                	<% for(ProjectBean p:projects){%>
    				<%=p.getEstimatedHours()%>,
    			
    			<%}%>
        			
                	
                ],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
    </script>
     
	<!-- Mirrored from colorlib.com/polygon/admindek/default/dashboard-crm.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 12 Dec 2019 16:08:32 GMT -->
</body>

</html>