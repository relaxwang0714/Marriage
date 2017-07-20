package DB;

import java.sql.ResultSet;
import java.sql.SQLException;

public class buybusiness {
	public static int buy(String introduction,String amount ,String price) throws  Exception{
		
		database ab = new database();

		ResultSet rs = null;
		int i =0;
		int badnews =0;
		int backnews = 1;
		String sqlText = "insert into buy values('"+introduction+"','"+amount+"','"+price+"'";
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

