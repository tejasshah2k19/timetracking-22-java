package com.bean;

public class UserTaskBean {

	int userTaskId;
	int userId;
	int taskId;
	int totalUtilMinutes;
	int statusId;

	public int getUserTaskId() {
		return userTaskId;
	}

	public void setUserTaskId(int userTaskId) {
		this.userTaskId = userTaskId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getTaskId() {
		return taskId;
	}

	public void setTaskId(int taskId) {
		this.taskId = taskId;
	}

	public int getTotalUtilMinutes() {
		return totalUtilMinutes;
	}

	public void setTotalUtilMinutes(int totalUtilMinutes) {
		this.totalUtilMinutes = totalUtilMinutes;
	}

	public int getStatusId() {
		return statusId;
	}

	public void setStatusId(int statusId) {
		this.statusId = statusId;
	}

}
