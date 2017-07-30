package servlet.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.register ;
import servlet.control.*;
import DB.*;
import javax.servlet.*;

/**
 * Servlet implementation class HandleRegister
 */
@WebServlet("/HandleRegister")
public class HandleRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   
        // TODO Auto-generated constructor stub
   public void init(ServletConfig config) throws ServletException{
	   super.init(config);
	   try{ Class.forName("com.mysql.jdbc.Driver");}
	   catch(Exception e){
		   System.out.print("失败!");
	   }
   }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		// TODO Auto-generated method stub
		register_db ab = new register_db();
		String username=new String(request.getParameter("logname"));
		String password = request.getParameter("password");
		//String phone = request.getParameter("phone");
		//String address=new String(request.getParameter("address").getBytes("ISO-8859-1"),"utf8");
		String email=request.getParameter("email");
		String again_password = request.getParameter("passwords");
		register userBean = new register();
		request.setAttribute("userBean", userBean);
		if(!password.equals(again_password)){
			userBean.setBackNews("两次密码不同，注册失败");
			RequestDispatcher dispatcher = request.getRequestDispatcher("register.html");
			dispatcher.forward(request, response);
		}
		try{
		String backnews = ab.regist(username, password, email);
		response.sendRedirect("success.html");
		
		}
		catch(Exception exp){
			System.out.print("注册失败");
		}
		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
	}
}
