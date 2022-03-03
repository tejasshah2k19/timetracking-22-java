package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.ProjectTeamBean;

@Repository
public class ProjectTeamDao {

	@Autowired
	JdbcTemplate stmt;
	public List<ProjectTeamBean> getTeamMembers(int projectId){
	
		
		return stmt.query("select p.title,u.*,pt.active from projectteam pt,users u,project p  where pt.userid = u.userid and pt.projectid = p.projectid and pt.projectid = ?", new BeanPropertyRowMapper<ProjectTeamBean>(ProjectTeamBean.class),new Object[] {projectId}); 
	}
	
}
