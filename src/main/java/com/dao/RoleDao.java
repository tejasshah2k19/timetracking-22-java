package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.RoleBean;

@Repository
public class RoleDao {

	@Autowired
	JdbcTemplate stmt;

	// update -> insert update delete --> modification
	// query -> select --> read only
	public void insertRole(RoleBean role) {
		stmt.update("insert into role (rolename) values (?)", role.getRoleName());
	}

	public List<RoleBean> getAllRoles() {
		List<RoleBean> roles = stmt.query("select * from role", new BeanPropertyRowMapper<RoleBean>(RoleBean.class));// 2
		// admin
		return roles;
	}

	public void deleteRole(int roleId) {
		stmt.update("delete from role where roleid = ?", roleId);
	}

	public RoleBean getRoleById(int roleId) {

		RoleBean role = stmt.queryForObject("select *  from role where roleid = ? ",
				new BeanPropertyRowMapper<RoleBean>(RoleBean.class), new Object[] { roleId });

		return role;
	}

	public void updateRole(RoleBean role) {
		stmt.update("update role set rolename = ? where roleid = ? ", role.getRoleName(), role.getRoleId());
	}

}
