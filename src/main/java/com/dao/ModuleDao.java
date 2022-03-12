package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.ModuleBean;

@Repository
public class ModuleDao {

	@Autowired
	JdbcTemplate stmt;

	public void saveModule(ModuleBean module) {

		stmt.update(
				"insert into module (projectid,modulename,description,estimatedminutes,statusid,startdate,totalutilminutes) values (?,?,?,?,?,?,?)",
				module.getProjectId(), module.getModuleName(), module.getDescription(), module.getEstimatedMinutes(),
				module.getStatusId(), module.getStartDate(), module.getTotalUtilMinutes());
	}

	public List<ModuleBean> getAllModules() {
		return stmt.query(
				"select m.*,p.title,s.statusName from module m,project p,status s  where m.projectid = p.projectid and s.statusid = m.statusid ",
				new BeanPropertyRowMapper<ModuleBean>(ModuleBean.class));
	}

	public List<ModuleBean> getAllModulesByProjectId(int projectId) {
		return stmt.query(
				"select m.*,p.title,s.statusName from module m,project p,status s  where m.projectid = p.projectid and s.statusid = m.statusid and m.projectid = ?",
				new BeanPropertyRowMapper<ModuleBean>(ModuleBean.class), new Object[] { projectId });
	}

	public ModuleBean getModuleById(int moduleId) {
		return stmt.queryForObject(
				"select m.*,p.title,s.statusName,s.statusid from module m,project p,status s  where m.projectid = p.projectid and s.statusid = m.statusid and m.moduleid = ? ",
				new BeanPropertyRowMapper<ModuleBean>(ModuleBean.class), new Object[] { moduleId });
	}

	public void updateModule(ModuleBean module) {

		stmt.update(
				"update  module set modulename = ?   , description = ? , estimatedminutes = ? ,statusid = ? , startdate = ? , totalutilminutes = ?  where moduleid = ? ",
				 module.getModuleName(), module.getDescription(), module.getEstimatedMinutes(),
				module.getStatusId(), module.getStartDate(), module.getTotalUtilMinutes(),module.getModuleId());
	}
	
	public void deleteModule(int moduleId) {
		stmt.update("delete from module where moduleid = ? ",moduleId);
	}
}
