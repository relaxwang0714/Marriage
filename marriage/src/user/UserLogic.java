package user;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DB.database;

import user.UserInfo;

public class UserLogic {

	public ArrayList<UserInfo> getUserInfo(String sqlTxt) 
			throws Exception{
		ArrayList<UserInfo> alUsers = new ArrayList<UserInfo>();
		ResultSet rs = null;
		database db = new database();
		try{
			rs=db.QuerySql(sqlTxt);
			while (rs.next()){
				UserInfo users = new UserInfo();
				users.setId(rs.getInt("id"));
				users.setAddress(rs.getString("address"));
				users.setPhone(rs.getString("phone"));
				users.setAge(rs.getString("age"));
				users.setSex(rs.getString("sex"));
				alUsers.add(users);
			}
		}
		catch(SQLException ex){
			throw ex;
		}
		finally{
			db.CloseConnection();
		}		
		return alUsers;
	}
	
	public int addUserInfo(String sqlTxt) throws SQLException{
		int flag = 0;
		database db = null;
		try {
			db = new database();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try{
			try {
				flag = db.ExcuteSql(sqlTxt);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		catch(SQLException ex){
			throw ex;
		}
		return flag;
	}
	
	public int editUserInfo(String id, String address,String phone,
			String age,String sex)
					throws SQLException{
		int flag = 0;
		String sqlTxt = "update userdata set address ='" + address 
					  + "', phone='" + phone
				      + "', age='" + age
				      + "', sex='" + sex
					  + "'  where id =" + id;
		database db = null;
		try {
			db = new database();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(sqlTxt);
		try {
			flag = db.ExcuteSql(sqlTxt);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}
}
