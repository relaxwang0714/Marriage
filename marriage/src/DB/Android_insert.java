package DB;
import java.sql.ResultSet;
import java.sql.SQLException;

import DB.database;
public class Android_insert {
public static int insert(String introduction, String amount,String chandi,String price ) throws Exception{
	database ab = new database();
	ResultSet rs = null;
	int i =0;
	int badnews = 0;
	int backnews = 1;
	String sqlText = "insert into user values('"+introduction+"','"+amount+"','"+chandi+"','"+price+"')";
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
