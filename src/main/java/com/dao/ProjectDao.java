package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.ProjectBean;
import com.bean.UserBean;

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

	public List<ProjectBean> getAllProjects(){
		return stmt.query("select p.*,s.statusname from project p,status s where p.statusid = s.statusid", new BeanPropertyRowMapper<ProjectBean>(ProjectBean.class));
	}

	public List<UserBean> getTeamMembers(int projectId) {

		
		return null;
	}

}
