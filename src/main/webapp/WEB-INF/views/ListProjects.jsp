<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Projects</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>

<body>
	<div id="pcoded" class="pcoded iscollapsed">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">
			<jsp:include page="AdminHeader.jsp"></jsp:include>

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">

					<jsp:include page="AdminSideBar.jsp"></jsp:include>

					<div class="pcoded-content">

						<div class="page-header card">
							<div class="row align-items-end">
								<div class="col-lg-8">
									<div class="page-header-title">
										<i class="feather icon-inbox bg-c-blue"></i>
										<div class="d-inline">
											<h5>List Projects</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="page-header-breadcrumb">
										<ul class=" breadcrumb breadcrumb-title">
											<li class="breadcrumb-item"><a href="admindashboard"><i
													class="feather icon-home"></i></a></li>
											<li class="breadcrumb-item"><a href="#!">Projects</a></li>
											<li class="breadcrumb-item"><a href="#!">List</a></li>
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
											<div class="col-sm-12">
												<div class="card">
													<div class="card-header">
														<h5><a href="newproject">New Project</a></h5>

													</div>
													<div class="card-block">
														<div class="dt-responsive table-responsive">
															<div id="order-table_wrapper"
																class="dataTables_wrapper dt-bootstrap4">
																<div class="row">
																	<div class="col-xs-12 col-sm-12">
																		<table id="listProjects" class="table table-striped">
																			<thead>
																				<tr role="row">
																					<th>Title</th>
																					<th>Description</th>
																					<th>Technology</th>
																					<th>EstimatedHours</th>
																					<th>StartDate</th>
																					<th>CompletionDate</th>
																					<th>Status</th>
																					<th>Action</th>
																				</tr>
																			</thead>
																			<tbody>


																				<c:forEach items="${projects}" var="p">
																					<tr>
																						<td><a href="modulebyproject?projectId=${p.projectId}">${p.title}</a></td>
																						<td>${p.description}</td>
																						<td>${p.technology}</td>
																						<td>${p.estimatedHours}</td>
																						<td>${p.startDate}</td>
																						<td>${p.completionDate}</td>
																						<td>${p.statusName}</td>
																						
																						
																						<td><a href="deleteproject/${p.projectId}">Delete</a>
																							| <a href="editproject?roleId=${p.projectId}">Edit</a> |
																							<a href="viewteam?projectId=${p.projectId}">View Team</a>
																							|
																							<a href="addteammember?projectId=${p.projectId}">Add Member</a>
																							|
																							<a href="viewTaskByProject?projectId=${p.projectId}">Task</a>
																							
																						</td>
																					</tr>
																				</c:forEach>



																			</tbody>

																		</table>
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

								<div id="styleSelector"></div>
							</div>
						</div>


					</div>
					<!-- pcoded wrapper -->
				</div>
				<!-- pcoded main container -->
			</div>
			<!-- pcoded-navwrap -->
		</div>
		<!--  pcoded -->



		<jsp:include page="AllJs.jsp"></jsp:include>

		<script type="text/javascript">
			$(document).ready(function() {
				$('#listProjects').DataTable();
			});
		</script>
</body>
</html>