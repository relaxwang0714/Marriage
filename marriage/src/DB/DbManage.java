package DB;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.mysql.jdbc.Statement;
public class DbManage {
	private Connection con;
	public ResultSet querySql(String sqlTxt) throws SQLException{
		String drive="com.mysql.jdbc.Driver";
		String url="jdbc:mysql://127.0.0.1/productinformation";
		Statement stmt=null;
		ResultSet rs=null;
		try{
			Class.forName(drive);
			this.con=DriverManager.getConnection(url, "root", "123456");
			stmt=(Statement)this.con.createStatement();
			rs=stmt.executeQuery(sqlTxt);
		}
		catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		return rs;
	}
	public void closeConnection() {
		// TODO Auto-generated method stub
		
	}
	public int excuteSql(String sqlTxt) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}

