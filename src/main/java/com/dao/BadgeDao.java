package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.BadgeBean;

@Repository
public class BadgeDao {

	
	@Autowired
	JdbcTemplate stmt;
	
	public void insertBadge(BadgeBean badge) {
		//insert update delete 
		stmt.update("insert into badge (badge) values (?) ",badge.getBadge());
	}
	
	public List<BadgeBean> getAllBadges(){
		//select 
		return stmt.query("select * from badge" , new BeanPropertyRowMapper<BadgeBean>(BadgeBean.class));
	}

	public void deleteBadge(int badgeId) {
		stmt.update("delete from badge where badgeid = ? ",badgeId);
	}
}
