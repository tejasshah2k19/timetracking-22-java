package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.TaskBean;

@Repository
public class TaskDao {

	@Autowired
	JdbcTemplate stmt;

	public void addTask(TaskBean task) {
		stmt.update(
				"insert into task (moduleid,projectid,tasktitle,priority,description,statusid,estimatedminutes,totalutilminutes) values (?,?,?,?,?,?,?,?)",
				task.getModuleId(), task.getProjectId(), task.getTaskTitle(), task.getPriority(), task.getDescription(),
				task.getStatusId(), task.getEstimatedMinutes(), 0);
	}

	public List<TaskBean> getAllTask() {
		return stmt.query(
				"select t.*,p.title,m.moduleName,s.statusName from task t,project p,module m,status s where t.projectid = p.projectid and t.moduleid = m.moduleid and t.statusid = s.statusid ",
				new BeanPropertyRowMapper<TaskBean>(TaskBean.class));
	}

	public List<TaskBean> getAllTaskByProject(int projectId) {
		return stmt.query(
				"select t.*,p.title,m.moduleName,s.statusName from task t,project p,module m,status s where t.projectid = p.projectid and t.moduleid = m.moduleid and t.statusid = s.statusid and p.projectid = ? ",
				new BeanPropertyRowMapper<TaskBean>(TaskBean.class), new Object[] { projectId });
	}

	public List<TaskBean> getAllTaskByModule(int moduleId) {
		return stmt.query(
				"select t.*,p.title,m.moduleName,s.statusName from task t,project p,module m,status s where t.projectid = p.projectid and t.moduleid = m.moduleid and t.statusid = s.statusid and m.moduleid = ? ",
				new BeanPropertyRowMapper<TaskBean>(TaskBean.class), new Object[] { moduleId });

	}

	public List<TaskBean> getTaskByDeveloper(int userId, int projectId) {
		return stmt.query(
				"select t.*,p.title  from task t,projectteam pt,project p  where pt.projectid = t.projectid and pt.userid = ? and pt.projectid  = ? and pt.projectid = p.projectid ",
				new BeanPropertyRowMapper<TaskBean>(TaskBean.class), new Object[] { userId, projectId });
	}

	public TaskBean getTaskById(int taskId) {
		return stmt.queryForObject("select t.* from task  t,status s  where taskid = ? and t.statusid  = s.statusid ",
				new BeanPropertyRowMapper<TaskBean>(TaskBean.class), new Object[] { taskId });
	}

}
