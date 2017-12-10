package test;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.junit.Test;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;

import cn.dao.ResourceDAO;
import cn.entity.User;

public class DaoTest {
	@Test
	public void insertUser(){
		JdbcTemplate jdbcTemplate = ResourceDAO.getJdbcTemplate();
		jdbcTemplate.update("INSERT INTO user_info VALUES(?, ?, ?, ?, ?, ?, ?)",  
                new PreparedStatementSetter() {  
                    public void setValues(PreparedStatement ps) throws SQLException {  
                        ps.setString(1, "zhiyuan");  
                        ps.setString(2, "致远");            
                        ps.setString(3, "1234");  
                        ps.setString(4, "");  
                        ps.setInt(5, 23);
                        ps.setString(6, "");
                        ps.setString(7, "");
                    }  
                });
		getUserList();
	}
	
	public void getUser(){
		String sql="select * from user_info where userid=?";
		RowMapper<User> rowMapper=new BeanPropertyRowMapper<User>(User.class);
		User user= ResourceDAO.getJdbcTemplate().queryForObject(sql, rowMapper,"TEST01");
		System.out.println(user);
	}
	public void getUserList(){
		String sql="select * from user_info";
		RowMapper<User> rowMapper=new BeanPropertyRowMapper<User>(User.class);
		List<User> userList= ResourceDAO.getJdbcTemplate().query(sql, rowMapper);
		for(User user : userList)
			System.out.println(user);
	}
}
