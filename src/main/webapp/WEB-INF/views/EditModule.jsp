<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Module</title>
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
											<h5>Edit Module</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="page-header-breadcrumb">
										<ul class=" breadcrumb breadcrumb-title">
											<li class="breadcrumb-item"><a href="admindashboard"><i
													class="feather icon-home"></i></a></li>
											<li class="breadcrumb-item"><a href="#!">Module</a></li>
											<li class="breadcrumb-item"><a href="#!">Edit</a></li>
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
														<h5>Modify Module</h5>
													</div>
													<div class="card-block">

														<form action="updatemodule" method="post">

															<input type="hidden" name="moduleId"
																value="${module.moduleId}" />
															<div class="form-group row">
																<label class="col-sm-2 col-form-label">Project
																	Title</label>
																<div class="col-sm-10">
																	<input type="text" name="title" class="form-control"
																		value="${module.title}">
																</div>
															</div>


															<div class="form-group row">
																<label class="col-sm-2 col-form-label">Module
																	Name</label>
																<div class="col-sm-10">
																	<input type="text" name="moduleName"
																		class="form-control" value="${module.moduleName}">
																</div>
															</div>



															<div class="form-group row">
																<label class="col-sm-2 col-form-label">Description</label>
																<div class="col-sm-10">
																	<textarea name="description" rows="5" cols="5"
																		class="form-control"
																		placeholder="Provide more detail on Module">${module.description}</textarea>
																</div>
															</div>





															<div class="form-group row">
																<label class="col-sm-2 col-form-label">StartDate</label>
																<div class="col-sm-10">
																	<input type="text" name="startDate"
																		class="form-control" value="${module.startDate }">
																</div>
															</div>

															<div class="form-group row">
																<label class="col-sm-2 col-form-label">EstimatedMinutes</label>
																<div class="col-sm-10">
																	<input type="text" name="estimatedMinutes"
																		class="form-control"
																		value="${module.estimatedMinutes}">
																</div>
															</div>

															<div class="form-group row">
																<label class="col-sm-2 col-form-label">Totla Utilized Minutes</label>
																<div class="col-sm-10">
																	<input type="text" name="totalUtilMinutes"
																		class="form-control"
																		value="${module.totalUtilMinutes}">
																</div>
															</div>



															<div class="form-group row">
																<label class="col-sm-2 col-form-label">Select
																	Status </label>
																<div class="col-sm-10">
																	<select name="statusId" class="form-control">
																		<c:forEach items="${status}" var="s">
																			<option value="${s.statusId}"
																				${s.statusId == module.statusId?"selected":""}>${s.statusName}</option>
																		</c:forEach>

																	</select>
																</div>
															</div>






															<input type="submit" class="btn btn-primary"
																value="Update Module" /> <input type="reset"
																class="btn btn-danger" value="Clear" />


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