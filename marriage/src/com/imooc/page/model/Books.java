package com.imooc.page.model;

import java.io.Serializable;
import java.util.Map;

public class Books implements Serializable {
	private static final long serialVersionUID = -7476381137287496245L;
	
	private String id; //记录id
	
	private String title;//标题
	
	private int court_level; //法院层级
	
	private String court; //法院名称
	
	private String time;//时间
	
	private String content;//内容
	
	public Books() {
		super();
	}

	public Books(String id, String title, int court_level, String court, String time, String content) {
		super();
		this.id = id;
		this.title = title;
		this.court_level = court_level;
		this.court = court;
		this.time = time;
		this.content=content;
	}
	
	public Books(Map<String, Object> map){
		this.id = (String)map.get("id");
		this.title = (String)map.get("title");
		this.court_level = (Integer)map.get("court_level");
		this.court = (String)map.get("court");
		this.time = (String)map.get("time");
		this.content = (String)map.get("content");
	}

	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getCourt_level() {
		return court_level;
	}

	public void setCourt_level(int court_level) {
		this.court_level = court_level;
	}

	public String getCourt() {
		return court;
	}

	public void setCourt(String court) {
		this.court = court;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", title=" + title + ", court_level=" + court_level
				+ ", court=" + court + ", time=" + time + ", content=" + content + "]";
	}
}
