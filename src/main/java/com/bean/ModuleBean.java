package com.bean;

public class ModuleBean {
	int moduleId;
	int projectId;
	String title;
	String moduleName;
	String description;
	int estimatedMinutes;
	int statusId;
	String statusName; 
	String startDate;
	int totalUtilMinutes;
	public int getModuleId() {
		return moduleId;
	}
	public void setModuleId(int moduleId) {
		this.moduleId = moduleId;
	}
	public int getProjectId() {
		return projectId;
	}
	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}
	public String getModuleName() {
		return moduleName;
	}
	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getEstimatedMinutes() {
		return estimatedMinutes;
	}
	public void setEstimatedMinutes(int estimatedMinutes) {
		this.estimatedMinutes = estimatedMinutes;
	}
	 
	public int getStatusId() {
		return statusId;
	}
	public void setStatusId(int statusId) {
		this.statusId = statusId;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	 
	public int getTotalUtilMinutes() {
		return totalUtilMinutes;
	}
	public void setTotalUtilMinutes(int totalUtilMinutes) {
		this.totalUtilMinutes = totalUtilMinutes;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStatusName() {
		return statusName;
	}
	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}
	
}
