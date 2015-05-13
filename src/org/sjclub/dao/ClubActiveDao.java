package org.sjclub.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.sjclub.model.ClubActive;
import org.sjclub.util.DBUtil;

public class ClubActiveDao {
	public static List<ClubActive> getActiveList(){
		List<ClubActive> clubActives = null;
		Connection conn = DBUtil.getConnection();
		String sql = "select top 12 * from dbo.T_ClubActive";
		try{
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			clubActives = new ArrayList<ClubActive>();
			while(rs.next()){
				ClubActive clubActive = new ClubActive();
				clubActive.setId(rs.getString("Id"));
				clubActive.setClubId(rs.getString("ClubId"));
				clubActive.setActiveHead(rs.getString("ActiveHead"));
				clubActive.setActiveContent(rs.getString("ActiveContent"));
				clubActive.setActiveEndTime(rs.getDate("ActiveTime"));
				clubActive.setActiveImg("http://sjclub.org/"+rs.getString("ActivePosterRoute")+"/"+rs.getString("ActivePosterName"));
				clubActives.add(clubActive);
			}
			rs.close();
			stmt.close();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.closeConnection(conn);
		}
		return clubActives;
	}
	
	public String getClubNameById(String clubId) throws SQLException{
		String clubName = null;
		Connection conn = DBUtil.getConnection();
		String sql = "select * from dbo.T_Club where Id = ?";
		try{
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, clubId);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				clubName = rs.getString("ClubName");
			}
			rs.close();
			ps.close();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			conn.close();
		}
		return clubName;
	}
	
	public static boolean haveAdd(String activeId, String userId){
		boolean mark = false;
		Connection conn = DBUtil.getConnection();
		String sql = "select * from dbo.T_ClubActiveAndUsers where ClubActive = ? and Users = ?";
		try{
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, activeId);
			ps.setString(2, userId);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
				mark = true;
			rs.close();
			ps.close();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.closeConnection(conn);
		}
		return mark;
	}
	
	public static void addClubActive(String activeId, String userId){
		Connection conn = DBUtil.getConnection();
		String sql = "insert into dbo.T_ClubActiveAndUsers values (NEWID(),?,?)";
		try{
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, activeId);
			ps.setString(2, userId);
			ps.executeUpdate();
			ps.close();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBUtil.closeConnection(conn);
		}
	}
}
