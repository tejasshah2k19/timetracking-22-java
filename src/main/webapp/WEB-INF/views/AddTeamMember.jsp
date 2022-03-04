<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Team Member</title>
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
											<h5>Assign Member</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="page-header-breadcrumb">
										<ul class=" breadcrumb breadcrumb-title">
											<li class="breadcrumb-item"><a href="admindashboard"><i
													class="feather icon-home"></i></a></li>
											<li class="breadcrumb-item"><a href="#!">Project</a></li>
											<li class="breadcrumb-item"><a href="#!">Add Member</a></li>
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
											<div class="col-sm-8">
												<div class="card">
													<div class="card-header">
														<h5>Add Member</h5>
													</div>
													<div class="card-block">
														<h4 class="sub-title">Add PM or Dev to Project</h4>
														<form action="saveteammembers" method="post">


															<div class="form-group row">
																<label class="col-sm-2 col-form-label">Project
																	Title</label>
																<div class="col-sm-10">
																	<input type="text"  value="${project.title }" readonly="readonly" class="form-control">
																</div>
															</div>

															<div class="form-group row">
																<label class="col-sm-2 col-form-label">Technology</label>
																<div class="col-sm-10">
																	<input type="text"  
																		class="form-control" value="${project.technology }" readonly="readonly">
																</div>
															</div>


 

 

															<div class="form-group row">
																<label class="col-sm-2 col-form-label">StartDate</label>
																<div class="col-sm-10">
																	<input type="text"  
																		class="form-control" readonly="readonly" value="${project.startDate}">
																</div>
															</div>



															<div class="form-group row">
																<label class="col-sm-2 col-form-label">CompletionDate</label>
																<div class="col-sm-10">
																	<input type="text"  
																		class="form-control" readonly="readonly" value="${project.completionDate }">
																</div>
															</div>





															<div class="form-group row">
																<label class="col-sm-2 col-form-label">Select
																	Users </label>
																<div class="col-sm-10">
																	<select name="userId" class="form-control" multiple="multiple">
	
																	<c:forEach items="${users}" var="u">
																		<option value="${u.userId}">${u.firstName}:${u.email}</option>
																	</c:forEach>

																</select>
																</div>
															</div>

															<input type="hidden" name="projectId" value="${project.projectId}">
																			
														<input type="submit" class="btn btn-primary" value="Add Project"/>
														<input type="reset" class="btn btn-danger" value="Clear"/>


														</form>


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
				$('#listRoles').DataTable();
			});
		</script>
</body>
</html>