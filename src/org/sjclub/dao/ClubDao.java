package org.sjclub.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.sjclub.util.DBUtil;

public class ClubDao {
	/**
	 * 查询用户是否是社团的会员,并且同时参加的社团最多为三个
	 * mark为-1时表示已经是本社团的成员
	 * mark为0时表示不是本社团成员，其他数目则表示已经参加的社团数目
	 */
	public static int userIsClub(String userId, String clubId){
		int mark = 0;
		Connection conn = DBUtil.getConnection();
		String sql = "select * from dbo.T_ClubAndUsers where Users = ?";
		try{
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userId);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				if(rs.getString("Club").equals(clubId)){
					//如果用户已经参加了此社团，返回-1
					mark = -1;
					break;
				}else{
					//如果没有参加社团，则返回参加了社团的数目
					mark++;
				}
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
	
	public static void addclub(String userId, String clubId){
		
	}
}
