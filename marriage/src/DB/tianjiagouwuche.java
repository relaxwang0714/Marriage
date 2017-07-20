package DB;
import DB.database;
public class tianjiagouwuche {
public static int tianjia(String introduction, String price, String chandi) throws Exception{
	String sqlTxt ="insert into gouwuche values('"+introduction+"','"+price+"','"+chandi+"')";
	database ab = new database();
	try{
	int a = ab.ExcuteSql(sqlTxt);
		
	return a;
}
	catch(Exception e){
		e.printStackTrace();
	}
	return 0;
}
}
