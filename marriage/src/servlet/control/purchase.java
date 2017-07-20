package servlet.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DB.*;

/**
 * Servlet implementation class purchase
 */
@WebServlet("/purchase")
public class purchase extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public purchase() {
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
		purchase_db ab = new purchase_db();
		int c = ab.purchase();
		if(c==1){
			System.out.print("¹ºÂò³É¹¦");
			RequestDispatcher dispatcher = request.getRequestDispatcher("NewFile.html");
			dispatcher.forward(request, response);
		}
		else{
			System.out.print("¹ºÂòÊ§°Ü");
		}
		}
		catch(Exception e){}
		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
		purchase_db ab = new purchase_db();
		int c = ab.purchase();
		if(c==1){
		
		}
		else{
			System.out.print("¹ºÂòÊ§°Ü");
		}
		}
		catch(Exception e){}
		
	}
}
