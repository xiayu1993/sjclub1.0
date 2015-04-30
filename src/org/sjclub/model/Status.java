package org.sjclub.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "dbo.T_Status")
public class Status {
	@Id
	@GenericGenerator(name = "pk_info", strategy = "guid")
	@GeneratedValue(generator = "pk_info")
	private String id;
	
	@Column(name =  "Type")
	private String type;
	
	@Column(name = "Rank")
	private int rank;
	
	public String getId(){
		return id;
	}
	public void setId(String id){
		this.id = id;
	}
	
	public String getType(){
		return type;
	}
	public void setType(String type){
		this.type = type;
	}
	
	public int getRank(){
		return rank;
	}
	public void setId(int rank){
		this.rank = rank;
	}
}
