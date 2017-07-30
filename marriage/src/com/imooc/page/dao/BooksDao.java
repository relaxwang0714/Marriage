package com.imooc.page.dao;

import com.imooc.page.model.Pager;
import com.imooc.page.model.Books;

public interface BooksDao {
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
