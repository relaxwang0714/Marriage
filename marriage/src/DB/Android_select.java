package DB;
import java.awt.List;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import DB.database;
public class Android_select{

	public  ArrayList select() throws  Exception{
		
		database ab = new database();

		ResultSet rs = null;
		int i =0;
		String badnews ="false";
		String backnews = "true";
		String sqlText = "select * from buy";
		try{
			
			rs = ab.QuerySql(sqlText);
			ArrayList a = convertList(rs);
		return a;
		}
		catch(SQLException e){
		e.printStackTrace();}
		return null;}
private static ArrayList convertList(ResultSet rs) throws SQLException {
    ArrayList list = new ArrayList();
    ResultSetMetaData md = rs.getMetaData();
    int columnCount = md.getColumnCount();
    while (rs.next()) {
        Map rowData = new HashMap();
        for (int i = 1; i <= columnCount; i++) {
            rowData.put(md.getColumnName(i), rs.getObject(i));
        }
        list.add(rowData);
    }
    return list;
}}
