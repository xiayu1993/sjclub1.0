package org.sjclub.dao;

import java.sql.Connection;
import java.sql.ResultSet;
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
}
