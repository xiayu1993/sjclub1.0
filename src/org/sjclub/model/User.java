package org.sjclub.model;

public class User {
	private String id;
	private String account;
	private String password;
	private String trueName;
	private String name;
	
	public String getId(){
		return id;
	}
	public void setId(String id){
		this.id = id;
	}
	
	public String getAccount(){
		return account;
	}
	public void setAccount(String account){
		this.account = account;
	}
	
	public String getPassword(){
		return password;
	}
	public void setPassword(String password){
		this.password = password;
	}
	
	public String getTrueName(){
		return trueName;
	}
	public void setTrueName(String trueName){
		this.trueName = trueName;
	}
	
	public String getName(){
		return name;
	}
	public void setName(String name){
		this.name = name;
	}
}
