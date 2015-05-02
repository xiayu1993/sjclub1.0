package org.sjclub.model;

public class Club {
	private String id;
	private String clubName;
	private String clubLogo;
	private String clubIntroducation;
	
	public String getId(){
		return id;
	}
	public void setId(String id){
		this.id = id;
	}
	
	public String getClubName(){
		return clubName;
	}
	public void setClubName(String clubName){
		this.clubName = clubName;
	}
	
	public String getClubLogo(){
		return clubLogo;
	}
	public void setClubLogo(String clubLogo){
		this.clubLogo = clubLogo;
	}
	
	public String getClubIntroducation(){
		return clubIntroducation;
	}
	public void setClubIntroducation(String clubIntroducation){
		this.clubIntroducation = clubIntroducation;
	}
}