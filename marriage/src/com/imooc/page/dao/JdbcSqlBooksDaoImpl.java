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
		// ��Ų�ѯ����
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
		
		// ��ʼ����
		int fromIndex	= pageSize * (pageNum -1);
		
		// ʹ��limit�ؼ��֣�ʵ�ַ�ҳ
		sql.append(" limit " + fromIndex + ", " + pageSize );
		
		// ������в�ѯ���ļ�¼����
		List<Books> booksList = new ArrayList<Books>();
		JdbcUtil jdbcUtil = null;
		try {
			jdbcUtil = new JdbcUtil();
			jdbcUtil.getConnection(); // ��ȡ���ݿ�����
			// ��ȡ�ܼ�¼��
			List<Map<String, Object>> countResult = jdbcUtil.findResult(countSql.toString(), paramList);
			Map<String, Object> countMap = countResult.get(0);
			int totalRecord = ((Number)countMap.get("totalRecord")).intValue();
			
			// ��ȡ��ѯ�ļ�¼
			List<Map<String, Object>> booksResult = jdbcUtil.findResult(sql.toString(), paramList);
			if (booksResult != null) {
				for (Map<String, Object> map : booksResult) {
					Books s = new Books(map);
					booksList.add(s);
				}
			}
			
			//��ȡ��ҳ��
			int totalPage = totalRecord / pageSize;
			if(totalRecord % pageSize !=0){
				totalPage++;
			}
			
			// ��װpager����
			result = new Pager<Books>(pageSize, pageNum, 
							totalRecord, totalPage, booksList);
			
		} catch (SQLException e) {
			throw new RuntimeException("��ѯ���������쳣��", e);
		} finally {
			if (jdbcUtil != null) {
				jdbcUtil.releaseConn(); // һ��Ҫ�ͷ���Դ
			}
		}
		return result;
	}
}
