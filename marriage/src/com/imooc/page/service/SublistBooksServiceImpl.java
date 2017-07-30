package com.imooc.page.service;

import com.imooc.page.dao.BooksDao;
import com.imooc.page.dao.SublistBooksDaoImpl;
import com.imooc.page.model.Pager;
import com.imooc.page.model.Books;

public class SublistBooksServiceImpl implements BooksService {

	private BooksDao booksDao;

	public SublistBooksServiceImpl() {
		// 创建servivce实现类时，初始化dao对象。
		booksDao = new SublistBooksDaoImpl();
	}

	@Override
	public Pager<Books> findBooks(Books searchModel, int pageNum,
			int pageSize) {
		Pager<Books> result = booksDao.findBooks(searchModel, pageNum,
				pageSize);
		return result;
	}

	public BooksDao getBooksDao() {
		return booksDao;
	}

	public void setBooksDao(BooksDao studentDao) {
		this.booksDao = booksDao;
	}
}
