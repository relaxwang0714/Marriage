package books;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DB.database;

import books.booksInfo;

public class booksLogic {
	
	public ArrayList<booksInfo> getbooksInfo(String sqlTxt) 
			throws Exception{
		ArrayList<booksInfo> alBooks = new ArrayList<booksInfo>();
		ResultSet rs = null;
		database db = new database();
		try{
			rs=db.QuerySql(sqlTxt);
			while (rs.next()){
				booksInfo books = new booksInfo();
				books.setId(rs.getString("id"));
				String TITLE=new String(rs.getString("title")); 
				books.setTitle(TITLE);
				books.setCourt_level(rs.getInt("court_level"));
				books.setCourt(rs.getString("court"));
				books.setTime(rs.getString("time"));
				alBooks.add(books);
			}
		}
		catch(SQLException ex){
			throw ex;
		}
		finally{
			db.CloseConnection();
		}		
		return alBooks;
	}
	
	

}
