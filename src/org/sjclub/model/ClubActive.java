package org.sjclub.model;

import java.util.Date;

public class ClubActive {
	private String id;
	private String clubId;
	private String activeHead;
	private String activeContent;
	private Date activeEndTime;
	private String activeImg;
	
	public String getId(){
		return id;
	}
	public void setId(String id){
		this.id = id;
	}
	
	public String getClubId(){
		return clubId;
	}
	public void setClubId(String clubId){
		this.clubId = clubId;
	}
	
	public String getActiveHead(){
		return activeHead;
	}
	public void setActiveHead(String activeHead){
		this.activeHead = activeHead;
	}
	
	public String getActiveContent(){
		return activeContent;
	}
	public void setActiveContent(String activeContent){
		this.activeContent = activeContent;
	}
	
	public Date getActiveEndTime(){
		return activeEndTime;
	}
	public void setActiveEndTime(Date activeEndTime){
		this.activeEndTime  = activeEndTime;
	}
	
	public String getActiveImg(){
		return activeImg;
	}
	public void setActiveImg(String activeImg){
		this.activeImg = activeImg;
	}
}
