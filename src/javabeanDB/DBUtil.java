package javabeanDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * 数据库操作
 * @author XIAYU
 *
 */
public class DBUtil {
	/* 数据库信息 */
	//连接至Club数据库
	private static String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static String connUrl = "jdbc:sqlserver://sjclub.org:1433;databaseName=Club;";
	private static String user = "sa";
	private static String password = "xiayu1010";
	
	/* 数据库查询，更新以及删除的参数 */
	//Statement对象，用于执行不带参数的简单SQL语句
	private Statement stmt = null;
	//PreparedStatement对象，用于执行带参数的SQL语句
	private PreparedStatement ps = null;
	//结果集
	private ResultSet rs = null;
	
	/*
	 * 数据库连接
	 */
	public static Connection getConnection(){
		Connection conn = null;
		try{
			//加载驱动
			Class.forName(driver);
			//数据库连接
			conn = DriverManager.getConnection(connUrl, user, password);
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("#javabeanDB/DBUtil.java-1#");
		}
		return conn;
	}
	
	/*
	 * 数据库断开
	 */
	public static void closeConnection(Connection conn){
		//判断conn是否为空
		if(conn != null){
			try{
				//关闭数据库连接
				conn.close();
			}catch(SQLException e){
				e.printStackTrace();
				System.out.println("#javabeanDB/DBUtil.java-2#");
			}
		}
	}
}