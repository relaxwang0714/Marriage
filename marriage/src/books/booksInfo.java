package books;

public class booksInfo {
	private String id; //记录id
	
	private String title;//标题
	
	private int court_level; //法院层级
	
	private String court; //法院名称
	
	private String time;//时间
	
	private String content;//内容

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
	
	
}
