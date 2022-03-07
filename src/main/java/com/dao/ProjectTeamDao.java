package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.ProjectBean;
import com.bean.ProjectTeamBean;
import com.bean.UserBean;

@Repository
public class ProjectTeamDao {

	@Autowired
	JdbcTemplate stmt;

	public List<ProjectTeamBean> getTeamMembers(int projectId) {

		return stmt.query(
				"select p.title,p.projectId,u.*,r.rolename,pt.active from projectteam pt,users u,project p,role r  where pt.userid = u.userid and pt.projectid = p.projectid and pt.projectid = ? and u.roleid = r.roleid",
				new BeanPropertyRowMapper<ProjectTeamBean>(ProjectTeamBean.class), new Object[] { projectId });
	}

	public List<UserBean> getUsersForProject(int projectId) {

		// users
		// project

		return stmt.query(
				"select * from users where roleid in ( 2, 3 ) and userid not in ( select userid from projectteam where projectid = ? )",
				new BeanPropertyRowMapper<UserBean>(UserBean.class), new Object[] { projectId });

	}

	public void addTeamMember(int projectId, int userId) {
		stmt.update("insert into projectteam (projectid,userid,active) values (?,?,?) ", projectId, userId, 1);
	}

	public void removeTeamMember(int projectId, int userId) {
		stmt.update("update projectteam set active = 0 where userid = ? and projectid = ? ",userId,projectId);
	}

	public List<ProjectBean> getProjectByUserId(int userId){
		return stmt.query("select * from project where projectid in (select projectid from projectteam where userid = ? and active = 1  )",new BeanPropertyRowMapper<ProjectBean>(ProjectBean.class),new Object[] {userId});
	}
	
	
}




