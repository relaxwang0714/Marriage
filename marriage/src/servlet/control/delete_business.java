package servlet.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DB.*;
import java.sql.*;

/**
 * Servlet implementation class delete_business
 */
@WebServlet("/delete_business")
public class delete_business extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public delete_business() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		try{
		deletebusiness ab = new deletebusiness();
		String introduction = request.getParameter("introduction");
		int i = ab.delete(introduction);
		if(i==1){
			response.sendRedirect("OK.jsp");
		}
		
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
			deletebusiness ab = new deletebusiness();
			String introduction = request.getParameter("introduction");
			int i = ab.delete(introduction);
			if(i==1){
				response.sendRedirect("ok.jsp");
			
			}
			
			
			}
			catch(Exception e){
				e.printStackTrace();
			}
			
	}


}
