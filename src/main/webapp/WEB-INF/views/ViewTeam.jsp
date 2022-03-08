<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Project Team</title>
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
										<i class="feather icon-eye bg-c-blue"></i>
										<div class="d-inline">
											<h5>${project.title.toUpperCase() }</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="page-header-breadcrumb">
										<ul class=" breadcrumb breadcrumb-title">
											<li class="breadcrumb-item"><a href="admindashboard"><i
													class="feather icon-home"></i></a></li>
											<li class="breadcrumb-item"><a href="#!">Projects</a></li>
											<li class="breadcrumb-item"><a href="#!">Team</a></li>
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
																					<th>Developer Name</th>
																					<th>Email</th>
																					<th>Role</th>
																					<th>Status</th>
																					<th>Action</th>
																				</tr>
																			</thead>
																			<tbody>


																				<c:forEach items="${team}" var="t">
																					<tr>

																						<td>${t.title}</td>
																						<td>${t.firstName}</td>
																						<td>${t.email}</td>
																						<td>${t.roleName}</td>
																						<td>
																							<c:if test="${t.active == 1 }">
																								Active
																							</c:if>
																							<c:if test="${t.active == 0 }">
																								InActive
																							</c:if>
																							
																							
																						</td>

																						
																						
																						<td>
																						
																						<c:if test="${t.active == 1 }">
																							<a href="removemember?projectId=${t.projectId}&userId=${t.userId}">Revoke</a>
																						</c:if>
																						
																						<c:if test="${t.active == 0 }">
																							<a href="reassignmember?projectId=${t.projectId}&userId=${t.userId}">ReAssign</a>
																						</c:if>
																						
																							
																							
																							
																							  
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