package com.imooc.page.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.imooc.page.Constant;
import com.imooc.page.model.Pager;
import com.imooc.page.model.Books;
import com.imooc.page.service.BooksService;
import com.imooc.page.service.SublistBooksServiceImpl;
import com.imooc.page.util.StringUtil;

public class SublistServlet extends HttpServlet {
	
	private static final long serialVersionUID = -3658128508633145268L;
	
	private BooksService booksService = new SublistBooksServiceImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ����request��Ĳ���
		String title = request.getParameter("title");//����
		
		// ��ȡ��Ժ�㼶
		int court_level = Constant.DEFAULT_court;
		String court_levelStr = request.getParameter("court_level");
		if(court_levelStr!=null && !"".equals(court_levelStr.trim())){
			court_level = Integer.parseInt(court_levelStr);
		}
		
		// У��pageNum��������Ϸ���
		String pageNumStr = request.getParameter("pageNum"); 
		if(pageNumStr !=null && !StringUtil.isNum(pageNumStr)){
			request.setAttribute("errorMsg", "�����������");
			request.getRequestDispatcher("sublistBooks.jsp").forward(request, response);
			return;
		}
		
		int pageNum = Constant.DEFAULT_PAGE_NUM; //��ʾ�ڼ�ҳ����
		if(pageNumStr!=null && !"".equals(pageNumStr.trim())){
			pageNum = Integer.parseInt(pageNumStr);
		}
		
		int pageSize = Constant.DEFAULT_PAGE_SIZE;   // ÿҳ��ʾ��������¼
		String pageSizeStr = request.getParameter("pageSize");
		if(pageSizeStr!=null && !"".equals(pageSizeStr.trim())){
			pageSize = Integer.parseInt(pageSizeStr);
		}
		
		// ��װ��ѯ����
		Books searchModel = new Books(); 
		searchModel.setTitle(title);
		searchModel.setCourt_level(court_level);
		
		//����service ��ȡ��ѯ���
		Pager<Books> result = booksService.findBooks(searchModel, 
																pageNum, pageSize);
		
		// ���ؽ����ҳ��
		request.setAttribute("result", result);
		request.setAttribute("title", title);
		request.setAttribute("court_level", court_level);
		
		request.getRequestDispatcher("sublistBooks.jsp").forward(request, response);
	}

}



