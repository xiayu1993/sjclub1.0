package org.sjclub.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * 数据库连接与关闭操作
 */
public class DBUtil {
	public static Connection getConnection(){
		Connection conn = null;
		try{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String connUrl = "jdbc:sqlserver://121.42.45.254:1433;DatabaseName=Club";
			conn = DriverManager.getConnection(connUrl, "sa", "xiayu1010");
		}catch(Exception e){
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void closeConnection(Connection conn){
		if(conn != null){
			try{
				conn.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
}
