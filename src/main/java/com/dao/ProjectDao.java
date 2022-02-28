package com.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.ProjectBean;

@Repository
public class ProjectDao {

	@Autowired
	JdbcTemplate stmt;

	public void addProject(ProjectBean project) {

		stmt.update(
				"insert into project (title,description,technology,estimatedhours,startdate,completiondate,statusid) values (?,?,?,?,?,?,?) ",
				project.getTitle(), project.getDescription(), project.getTechnology(), project.getEstimatedHours(),
				project.getStartDate(), project.getCompletionDate(), project.getStatusId());
	}
}
