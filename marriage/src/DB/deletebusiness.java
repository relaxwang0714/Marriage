package DB;
import DB.database;
import java.sql.*;
public class deletebusiness {
	public static int delete(String introduction){
		String sql ="delete from gouwuche where introduction='"+introduction+"'";
		try{
	database ab = new database();
	int i = ab.ExcuteSql(sql);
	if(i!=0)
		return 1;
	else
		return 0;
		}
		catch(Exception e){
			e.printStackTrace();
		}
	
	return 0;
	}
}
