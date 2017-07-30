package com.imooc.page.service;

import com.imooc.page.model.Books;
import com.imooc.page.model.Pager;

public interface BooksService {
	/**
	 * 根据查询条件，查询学生分页信息
	 * 
	 * @param searchModel
	 *            封装查询条件
	 * @param pageNum
	 *            查询第几页数据
	 * @param pageSize
	 *            每页显示多少条记录
	 * @return 查询结果
	 */
	public Pager<Books> findBooks(Books searchModel, int pageNum,
			int pageSize);
	
}
