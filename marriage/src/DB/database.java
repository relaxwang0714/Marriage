package DB;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

             public class database {
            	 private Connection conn = null;
            		
            		public database() throws Exception {
            		}
            		
            		public int ExcuteSql(String sqlTxt) throws SQLException, ClassNotFoundException	{
            			System.out.println(sqlTxt); 
            			String driverName="com.mysql.jdbc.Driver";
            			int flag = 0;
            			 String url = "jdbc:mysql://localhost:3306/marriage?characterEncoding=utf8&&useSSL=true";  

            		        String usename = "root";  
            		 
            		        String psw = "123456";
            			Statement stmt = null;
            			try {
            				Class.forName(driverName);
            				   this.conn = DriverManager.getConnection(url,usename,psw);
            				   stmt = this.conn.createStatement();
            				   flag = stmt.executeUpdate(sqlTxt);
            			} 
            			catch (SQLException s) {
            				s.printStackTrace();
            			} 			   
            			finally {
            				if(stmt!=null)
            					stmt.close();
            				if(conn!= null)
            					conn.close();
            			}
            			return flag;
            		}
            		
            		public ResultSet QuerySql(String sqlTxt) throws SQLException, ClassNotFoundException{
            			 String driverName="com.mysql.jdbc.Driver";
            			 String url = "jdbc:mysql://localhost:3306/marriage?characterEncoding=utf8&&useSSL=true";  

         		        String usename = "root";  
         		 
         		        String psw = "123456";
            			Statement stmt = null;
            			ResultSet rs = null;
            			try {
            				Class.forName(driverName);
            				 this.conn = DriverManager.getConnection(url,usename,psw);
            				   stmt = this.conn.createStatement();
            				   rs = stmt.executeQuery(sqlTxt);
            			} 
            			catch (SQLException s) {
            				s.printStackTrace();
            			} 

            			return rs;
            		}		
            	//¹Ø±ÕÊý¾Ý¿â	
            public void CloseConnection() {
            			try {
            				this.conn.close();
            			} 
            			catch (SQLException e) {
            				// TODO Auto-generated catch block
            				e.printStackTrace();
            			}
            			this.conn = null;
            		}
            		
            		
             }



