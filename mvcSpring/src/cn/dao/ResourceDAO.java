package cn.dao;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

public class ResourceDAO {
	private static JdbcTemplate jdbcTemplate = null;
	/**
	 * 获取JdbcTemplate对象
	 * @return
	 */
	public static JdbcTemplate getJdbcTemplate(){
		@SuppressWarnings("resource")
		ApplicationContext ctx=new ClassPathXmlApplicationContext("applicationContext.xml");
		if(jdbcTemplate == null)
			jdbcTemplate=(JdbcTemplate) ctx.getBean("jdbcTemplate");
		return jdbcTemplate;
	}
}
