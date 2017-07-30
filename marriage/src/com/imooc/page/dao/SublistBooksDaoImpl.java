package com.imooc.page.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.imooc.page.Constant;
import com.imooc.page.model.Pager;
import com.imooc.page.model.Books;
import com.imooc.page.util.JdbcUtil;

public class SublistBooksDaoImpl implements BooksDao {
	@Override
	public Pager<Books> findBooks(Books searchModel, int pageNum,int pageSize) {
		List<Books> allBooksList = getAllBooks(searchModel);

		Pager<Books> pager = new Pager<Books>(pageNum, pageSize,
				allBooksList);
		
		return pager;
	}

	/**
	 * 模仿获取所有数据
	 * 
	 * @param searchModel
	 *            查询参数
	 * @return 查询结果
	 */
	private static List<Books> getAllBooks(Books searchModel) {
		List<Books> result = new ArrayList<Books>();
		List<Object> paramList = new ArrayList<Object>();

		String title = searchModel.getTitle();
		int court_level = searchModel.getCourt_level();

		StringBuilder sql = new StringBuilder(
				"select * from books where 1=1");

		if (title != null && !title.equals("")) {
			sql.append(" and title like ?");
			paramList.add("%" + title + "%");
		}

		if (court_level == Constant.second_court || court_level == Constant.first_court || court_level == Constant.third_court || court_level == Constant.last_court) {
			sql.append(" and court_level = ?");
			paramList.add(court_level);
		}

		JdbcUtil jdbcUtil = null;
		try {
			jdbcUtil = new JdbcUtil();
			jdbcUtil.getConnection();  // 获取数据库链接
			List<Map<String, Object>> mapList = jdbcUtil.findResult(
					sql.toString(), paramList);
			if (mapList != null) {
				for (Map<String, Object> map : mapList) {
					Books s = new Books(map);
					result.add(s);
				}
			}
		} catch (SQLException e) {
			throw new RuntimeException("查询所有数据异常！", e);
		} finally {
			if (jdbcUtil != null) {
				jdbcUtil.releaseConn(); // 一定要释放资源
			}
		}

		return result;
	}

	public static void main(String[] args) {
		List<Books> lst = getAllBooks(new Books());
		for (Books s : lst) {
			System.out.println(s);
		}
	}
}
