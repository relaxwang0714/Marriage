package Servlet_user;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.UserLogic;

public class EditUserInfo extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public EditUserInfo() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
	
	public String convertCharSet(String oldString) throws UnsupportedEncodingException{
		String newString = "";
		byte[] b = oldString.getBytes("ISO-8859-1");
		newString = new String(b, "utf-8");
		return newString;
	}

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		String address = request.getParameter("address");
		
		String phone = request.getParameter("phone");
		phone = this.convertCharSet(phone);
		String age = request.getParameter("age");
		age = this.convertCharSet(age);
		String sex = request.getParameter("sex");
		UserLogic stuLogic = new UserLogic();
		int flag = 0;
		try{
			flag = stuLogic.editUserInfo(id, address,phone, age,sex);
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		if (flag != 0)
			response.sendRedirect("../index.jsp");
		else
			response.sendRedirect("../MyJsp.jsp");
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
