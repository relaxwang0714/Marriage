package servlet.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DB.*;
/**
 * Servlet implementation class insert_into
 */
@WebServlet("/insert_into")
public class insert_into extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insert_into() {
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
		doGet(request, response);//这个一定要写，两边都写
		String introduction = new String( request.getParameter("introduction").getBytes("ISO-8859-1"),"utf8");
	
		String chandi = new String(request.getParameter("chandi").getBytes("ISO-8859-1"),"utf8");
		String price = new String( request.getParameter("price").getBytes("ISO-8859-1"),"utf8");
		try{
			tianjiagouwuche ab = new tianjiagouwuche();
			
			int b = ab.tianjia(introduction,chandi,price);
			if(b==0){
				System.out.print("wrong");
				response.sendRedirect("wrong.jsp");
				}
				
				else{
				System.out.print("right");
				response.sendRedirect("right.jsp");
				
				
				}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String introduction =request.getParameter("introduction");
		String chandi = new String(request.getParameter("chandi").getBytes("ISO-8859-1"),"utf8");
		String price = new String( request.getParameter("price").getBytes("ISO-8859-1"),"utf8");
		
		
		try{
			tianjiagouwuche ab = new tianjiagouwuche();
			
			int b = ab.tianjia(introduction, price,chandi);
			if(b==0){
				System.out.print("wrong");
				response.sendRedirect("wrong.jsp");
				}
				
				else{
				System.out.print("right");
				response.sendRedirect("right.jsp");
				
				
				}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
