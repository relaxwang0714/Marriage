package DB;
import DB.*;
public class purchase_db {
public int purchase(){
	try{
	database ab = new database();
	String sqltxt="insert into buy(introduction,price) select introduction,price from shangjia1";
	int a = ab.ExcuteSql(sqltxt);
	if(a!=0){
	return 1;}
	else return 0;
	}
	catch(Exception e){return 0;}
	
}
}
