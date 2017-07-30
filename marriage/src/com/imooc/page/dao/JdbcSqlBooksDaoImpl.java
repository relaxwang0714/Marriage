package com.imooc.page.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.imooc.page.Constant;
import com.imooc.page.model.Pager;
import com.imooc.page.model.Books;
import com.imooc.page.util.JdbcUtil;

public class JdbcSqlBooksDaoImpl implements BooksDao {
	@Override
	public Pager<Books> findBooks(Books searchModel,int pageNum,int pageSize){
		Pager<Books> result = null;
		// 存放查询参数
		List<Object> paramList = new ArrayList<Object>();
		
		String title = searchModel.getTitle();
		int court_level = searchModel.getCourt_level();
		
		StringBuilder sql = new StringBuilder(
				"select * from hunyuecaichan where 1=1");
		StringBuilder countSql = new StringBuilder(
				"select count(id) as totalRecord from hunyuecaichan where 1=1 ");

		if (title != null && !title.equals("")) {
			sql.append(" and title like ?");
			countSql.append(" and title like ?");
			paramList.add("%" + title + "%");
		}

		if (court_level == Constant.last_court || court_level == Constant.third_court || court_level == Constant.second_court || court_level == Constant.first_court) {
			sql.append(" and court_level = ?");
			countSql.append(" and court_level = ?");
			paramList.add(court_level);
		}
		
		// 起始索引
		int fromIndex	= pageSize * (pageNum -1);
		
		// 使用limit关键字，实现分页
		sql.append(" limit " + fromIndex + ", " + pageSize );
		
		// 存放所有查询出的记录对象
		List<Books> booksList = new ArrayList<Books>();
		JdbcUtil jdbcUtil = null;
		try {
			jdbcUtil = new JdbcUtil();
			jdbcUtil.getConnection(); // 获取数据库链接
			// 获取总记录数
			List<Map<String, Object>> countResult = jdbcUtil.findResult(countSql.toString(), paramList);
			Map<String, Object> countMap = countResult.get(0);
			int totalRecord = ((Number)countMap.get("totalRecord")).intValue();
			
			// 获取查询的记录
			List<Map<String, Object>> booksResult = jdbcUtil.findResult(sql.toString(), paramList);
			if (booksResult != null) {
				for (Map<String, Object> map : booksResult) {
					Books s = new Books(map);
					booksList.add(s);
				}
			}
			
			//获取总页数
			int totalPage = totalRecord / pageSize;
			if(totalRecord % pageSize !=0){
				totalPage++;
			}
			
			// 组装pager对象
			result = new Pager<Books>(pageSize, pageNum, 
							totalRecord, totalPage, booksList);
			
		} catch (SQLException e) {
			throw new RuntimeException("查询所有数据异常！", e);
		} finally {
			if (jdbcUtil != null) {
				jdbcUtil.releaseConn(); // 一定要释放资源
			}
		}
		return result;
	}
}
