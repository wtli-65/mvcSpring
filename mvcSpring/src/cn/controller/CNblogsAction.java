package cn.controller;

import java.util.Arrays;
import java.util.Date;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.bean.Massage;
import cn.dao.ResourceDAO;
import cn.entity.User;
import cn.service.ArticleService;
import cn.service.MessageService;
@RequestMapping("/cnblog")
@Controller 
public class CNblogsAction {
	private static Logger log = Logger.getLogger(CNblogsAction.class);
	
	@RequestMapping("/")
	public String start(){
		log.info("request for cnblogs-index");
		System.out.println(System.getProperty("user.dir"));
		System.out.println(this.getClass().getClassLoader().getResource("/").getPath());
		return "main";
	}
	@RequestMapping("/pick")
	public String pick(){
		log.info("request for cnblogs-index");
		return "";
	}
	@RequestMapping("/candidate")
	public String candidate(){
		log.info("request for cnblogs-index");
		return "cnblogs-index";
	}
	@RequestMapping("/signin")
	public String signin(){
		return "signin";
	}
	@RequestMapping("/login")
	public String login(User user,Map<String, Object> map){
		map.put("UserID", user.getUserid());
		JdbcTemplate jdbcTemplate = ResourceDAO.getJdbcTemplate();
		RowMapper<User> rowMapper=new BeanPropertyRowMapper<User>(User.class);
		String sql = "select * from user_info where userid=?";
		User iuser = jdbcTemplate.queryForObject(sql, rowMapper, user.getUserid());
		if(iuser.getUsername().equals("")){
			map.put("UserName", "登录");
			map.put("Info", "注册");
			map.put("ArticleList", ArticleService.getArticleList());
		}else{
			map.put("UserName", iuser.getUsername());
			map.put("Info", "我的博客");
			map.put("ArticleList",ArticleService.getArticleList(user.getUserid()));
		}
		return "main";
	}
	@RequestMapping("/writeBlog")
	public String writeBlog(){
		return "writeBlog";
	}
	@RequestMapping("/register")
	public Object register(User user){
//		if(user.getUsername()!=null){
//			JdbcTemplate jdbcTemplate = ResourceDAO.getJdbcTemplate();
//			String sql = "insert into user_info (userid,username,password,email) values(?,?,?,?)";
//			int i = jdbcTemplate.update(sql, new Object[]{user.getUserid(),user.getUsername(),user.getPassword(),user.getEmail()},new int[]{java.sql.Types.VARCHAR,java.sql.Types.VARCHAR,java.sql.Types.VARCHAR,java.sql.Types.VARCHAR});
//			if(i>0){
				//发送验证邮件
				Massage msg = new Massage();
				msg.setHostName("smtp.163.com");
//				msg.setBcc(Arrays.asList(user.getEmail().split(",")));
				msg.setBcc(Arrays.asList("18262284673@163.com"));
				msg.setSubject("Hello World!");
//				MessageService.sendMessage();
				String viewName = "success";
				ModelAndView modelAndView = new ModelAndView(viewName);
				modelAndView.addObject("time", new Date());
				modelAndView.addObject("obj", "ModelAndView 添加对象成功！<hr>");
				return modelAndView;
//			}
//			return null;
//		}else return "register";
	}
}
