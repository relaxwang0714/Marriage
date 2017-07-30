package com.imooc.page.service;

import com.imooc.page.dao.JdbcSqlBooksDaoImpl;
import com.imooc.page.dao.BooksDao;
import com.imooc.page.model.Pager;
import com.imooc.page.model.Books;

public class JdbcSqlBooksServiceImpl implements BooksService {
	private BooksDao booksDao;
	
	public JdbcSqlBooksServiceImpl(){
		booksDao = new JdbcSqlBooksDaoImpl();
	}
	@Override
	public Pager<Books> findBooks(Books searchModel, int pageNum,
			int pageSize) {
		Pager<Books> result = booksDao.findBooks(searchModel, pageNum,
				pageSize);
		return result;
	}
}
