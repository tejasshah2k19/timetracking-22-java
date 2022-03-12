package com.bean;

public class TaskBean {

	int taskId;
	int moduleId;
	int projectId;
	String taskTitle;
	String priority;
	String description;
	int statusId;
	int estimatedMinutes;
	int totlaUtilMinutes;

	String statusName;
	String moduleName;
	String title;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getTaskId() {
		return taskId;
	}

	public void setTaskId(int taskId) {
		this.taskId = taskId;
	}

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

	public String getTaskTitle() {
		return taskTitle;
	}

	public void setTaskTitle(String taskTitle) {
		this.taskTitle = taskTitle;
	}

	public String getStatusName() {
		return statusName;
	}

	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}

	public String getModuleName() {
		return moduleName;
	}

	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}

	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getStatusId() {
		return statusId;
	}

	public void setStatusId(int statusId) {
		this.statusId = statusId;
	}

	public int getEstimatedMinutes() {
		return estimatedMinutes;
	}

	public void setEstimatedMinutes(int estimatedMinutes) {
		this.estimatedMinutes = estimatedMinutes;
	}

	public int getTotlaUtilMinutes() {
		return totlaUtilMinutes;
	}

	public void setTotlaUtilMinutes(int totlaUtilMinutes) {
		this.totlaUtilMinutes = totlaUtilMinutes;
	}

}
