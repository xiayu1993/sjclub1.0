package org.sjclub.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.sjclub.model.User;
import org.sjclub.util.DBUtil;

public class UserDao {
	/**
	 * 根据用户账号查找指定用户是否存在
	 */
	public static boolean isAccountExist(String account){
		boolean mark = false;
		Connection conn = DBUtil.getConnection();
		String sql = "select Id from dbo.T_Users where Account = ?";
		try{
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(0, account);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				mark = true;
			}
			rs.close();
			ps.close();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.closeConnection(conn);
		}
		return mark;
	}
	
	/**
	 * 根据用户账号和密码查询指定用户是否在数据库中存在
	 */
	public static boolean isExist(String account, String password){
		boolean mark = false;
		//获取数据库连接Connection对象
		Connection conn = DBUtil.getConnection();
		//根据指定用户账号密码查询用户信息
		String sql = "select Id from dbo.T_Users where Account = ? and password = ?";
		try{
			//获取PreparedStatement对象
			PreparedStatement ps = conn.prepareStatement(sql);
			//对用户对象属性赋值
			ps.setString(1, account);
			ps.setString(2, password);
			//执行查询获取结果集
			ResultSet rs = ps.executeQuery();
			//判断结果集是否有效
			if(rs.next()){
				//如果存在账号则返回true
				mark = true;
			}
			//释放此ResultSet对象的数据库和JDBC资源
			rs.close();
			//释放此PreParedStatement对象的数据库和JDBC资源
			ps.close();
		}
		catch(SQLException e){
			e.printStackTrace();
			System.out.print("UserDB.userIsExist error!");
		}
		finally{
			//关闭数据库连接
			DBUtil.closeConnection(conn);
		}
		return mark;
	}
	
	public static User login(String account, String password){
		User user = null;
		Connection conn = DBUtil.getConnection();
		String sql = "select * from dbo.T_Users where Account = ? and Password = ?";
		try{
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,account);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				user = new User();
				user.setId(rs.getString("Id"));
				user.setName(rs.getString("Name"));
				user.setAccount(rs.getString("Account"));
				user.setPassword(rs.getString("Password"));
			}
			rs.close();
			ps.close();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.closeConnection(conn);
		}
		return user;
	}
	
	public static User register(User user){
		Connection conn = DBUtil.getConnection();
		String sql = "insert into dbo.T_Users(Id, Account, Password, Name) values(NEWID(),?,?,?)";
		try{
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(0, user.getAccount());
			ps.setString(1, user.getPassword());
			ps.setString(2, user.getName());
			ps.executeUpdate();
			ps.close();
			sql = "select Id from dbo.T_Users where Account = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(0, user.getAccount());
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				user.setId(rs.getString("Id"));
			}
			rs.close();
			ps.close();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.closeConnection(conn);
		}
		return user;
	}
}
