package com.imooc.page.service;

import com.imooc.page.model.Books;
import com.imooc.page.model.Pager;

public interface BooksService {
	/**
	 * ���ݲ�ѯ��������ѯѧ����ҳ��Ϣ
	 * 
	 * @param searchModel
	 *            ��װ��ѯ����
	 * @param pageNum
	 *            ��ѯ�ڼ�ҳ����
	 * @param pageSize
	 *            ÿҳ��ʾ��������¼
	 * @return ��ѯ���
	 */
	public Pager<Books> findBooks(Books searchModel, int pageNum,
			int pageSize);
	
}
