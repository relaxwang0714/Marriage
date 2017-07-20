package DB;

import DB.database;
import java.sql.*;
public class Android_login {
	public static int login(String usename,String password) throws  Exception{
	
	database ab = new database();

	ResultSet rs = null;
	int i =0;
	int badnews =0;
	int backnews = 1;
	String sqlText = "select username,password from android_user where username='"+usename+"'and password='"+password+"'";
	try{
		rs = ab.QuerySql(sqlText);
		if(rs.next() ==true){
		ab.CloseConnection();
		return  backnews;
	}
		else
			ab.CloseConnection();
		{return badnews;}}
	catch(SQLException exp){
		ab.CloseConnection();
		return badnews;
		
}
	
	}
	}
