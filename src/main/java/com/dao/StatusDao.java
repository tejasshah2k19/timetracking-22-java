package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.StatusBean;

@Repository
public class StatusDao {

	@Autowired
	JdbcTemplate stmt;
	
	public List<StatusBean> getAllStatus(){
		return stmt.query("select * from status",new BeanPropertyRowMapper<StatusBean>(StatusBean.class)); 
	}
	
}
