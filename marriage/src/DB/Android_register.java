package DB;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Android_register {
	public static int insert(String username, String password) throws Exception{
		database ab = new database();
		ResultSet rs = null;
		int i =0;
		int badnews = 0;
		int backnews = 1;
		String sqlText = "insert into android_user values('"+username+"','"+password+"')";
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

