package DB;
import DB.database;
import java.sql.*;
public class Android_upload {

	public static String regist(String introduction,String price,String chandi,String pic)
			throws Exception{
					database ab = new database();
					ResultSet rs = null;
					int i =0;
					String badnews ="0";
					String backnews = "1";
					String sqlText = "insert into shangjia1(introduction,price,chandi) values('"+introduction+"','"+price+"','"+chandi+"')";
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
	public static String update(String pic,int c)
			throws Exception{
					database ab = new database();
					ResultSet rs = null;
					int i =0;
					String badnews ="0";
					String backnews = "1";
					String sqlText = "update shangjia1 set picturepath='"+pic+"' where goodid= "+c+"";
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


