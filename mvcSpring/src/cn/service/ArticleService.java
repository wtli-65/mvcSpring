package cn.service;

import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.JdbcTemplate;

import cn.dao.ResourceDAO;

public class ArticleService {
	public static List getArticleList(String userID){
		JdbcTemplate jdbcTemplate = ResourceDAO.getJdbcTemplate();
		String sql = "select articleId,articleName from article_record where inputuserid=?";
		List articleList = jdbcTemplate.queryForList(sql, userID);
		return articleList;
	}
	public static List getArticleList(){
		JdbcTemplate jdbcTemplate = ResourceDAO.getJdbcTemplate();
		String sql = "select articleId,articleName from article_record";
		List articleList = jdbcTemplate.queryForList(sql);
		return articleList;
	}
}
