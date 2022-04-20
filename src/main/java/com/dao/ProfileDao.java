package com.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ProfileDao {

	@Autowired
	JdbcTemplate stmt;


	public void updateProfile(String path,int userId) {
		stmt.update("update users set profilepic = ? where userId =  ? ",path,userId);
	}
}
