package DB;
import DB.database;
import java.sql.*;
public class register_db {
public static String regist(String username,String password,/*String phone,String address,*/String email)
throws Exception{
		database ab = new database();
		ResultSet rs = null;
		int i =0;
		String badnews ="×¢²áÊ§°Ü";
		String backnews = "×¢²á³É¹¦£¡";
		String sqlText = "insert into user(username,password,email) values('"+username+"','"+password+"','"+email+"')";
		try{
		 i = ab.ExcuteSql(sqlText);
		if(i ==1){
			return  backnews;}
		else
		{return badnews;}}
		catch(SQLException exp){
			return badnews;
			
		}
		
		
		
	
	
}
}