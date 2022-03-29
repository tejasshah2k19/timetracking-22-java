<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Module</title>
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
											<h5>New Task</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="page-header-breadcrumb">
										<ul class=" breadcrumb breadcrumb-title">
											<li class="breadcrumb-item"><a href="admindashboard"><i
													class="feather icon-home"></i></a></li>
											<li class="breadcrumb-item"><a href="#!">Task</a></li>
											<li class="breadcrumb-item"><a href="#!">New</a></li>
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
														<h5>Add New Task</h5>
													</div>
													<div class="card-block">
														<h4 class="sub-title">Provide Few Information Of Task</h4>
														<form action="task" method="post">

															<div class="form-group row">
																<label class="col-sm-2 col-form-label">Select
																	Project </label>
																<div class="col-sm-10">

																	<select name="projectId" id="projectId"
																		class="form-control" onchange="loadModules()">
																	
																		<option value="-1">Select Project</option>
																	
																		<c:forEach items="${projects}" var="p">
																			<option value="${p.projectId}">${p.title}</option>
																		</c:forEach>

																	</select>
																</div>
															</div>


															<div class="form-group row">
																<label class="col-sm-2 col-form-label">Select
																	Module </label>
																<div class="col-sm-10">
																	<select name="moduleId" id="moduleId"
																		class="form-control">


																	</select>
																</div>
															</div>



															<div class="form-group row">
																<label class="col-sm-2 col-form-label">Task
																	Title</label>
																<div class="col-sm-10">
																	<input type="text" name="taskTitle"
																		class="form-control">
																</div>
															</div>



															<div class="form-group row">
																<label class="col-sm-2 col-form-label">Description</label>
																<div class="col-sm-10">
																	<textarea name="description" rows="5" cols="5"
																		class="form-control"
																		placeholder="Provide more detail on Module"></textarea>
																</div>
															</div>







															<div class="form-group row">
																<label class="col-sm-2 col-form-label">EstimatedMinutes</label>
																<div class="col-sm-10">
																	<input type="text" name="estimatedMinutes"
																		class="form-control">
																</div>
															</div>



															<div class="form-group row">
																<label class="col-sm-2 col-form-label">Select
																	Status </label>
																<div class="col-sm-10">
																	<select name="statusId" class="form-control">
																		<option value="-1">Select Status</option>

																		<c:forEach items="${status}" var="s">
																			<option value="${s.statusId}">${s.statusName}</option>
																		</c:forEach>

																	</select>
																</div>
															</div>




															<div class="form-group row">
																<label class="col-sm-2 col-form-label">Priority</label>
																<div class="col-sm-10">
																	<input type="text" name="priority" class="form-control">
																</div>
															</div>



															<input type="submit" class="btn btn-primary"
																value="Add Module" /> <input type="reset"
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
			
			function loadModules(){
				let projectId = $("#projectId")[0].value 
				
				
				$("#moduleId").empty(); 
				
				$.get("getmodulesbyproject",{projectId:projectId}).done(function(data){
						console.log(data); 
						console.log(data[0]); 
                        for(let i=0;i<data.length;i++){ 
							$("#moduleId").append($("<option     />").val(data[i].moduleId).text(data[i].moduleName));
                        }
                        
				 });
			}
	
		</script>
</body>
</html>