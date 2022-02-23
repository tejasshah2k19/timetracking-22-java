package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.UserBean;

@Repository
public class UserDao {

	@Autowired
	JdbcTemplate stmt;

	public void addUser(UserBean user) {
		stmt.update("insert into users (firstname,email,password,roleid) values (?,?,?,?) ", user.getFirstName(),
				user.getEmail(), user.getPassword(), user.getRoleId());
	}

	public List<UserBean> getAllUsers() {

		return stmt.query("select u.*,r.roleName  from users u,role r where u.roleid = r.roleid ",
				new BeanPropertyRowMapper<UserBean>(UserBean.class));
	}

	public UserBean getUserByEmail(String email) {
		UserBean dbUser = null;

		try {
			dbUser = stmt.queryForObject("select * from users where email = ? ",
					new BeanPropertyRowMapper<UserBean>(UserBean.class), new Object[] { email });
		} catch (Exception e) {

		}
		return dbUser;
	}

	public void updatePassword(UserBean user) {
		stmt.update("update users set password = ? where email = ?",user.getPassword(),user.getEmail());
	}
}
