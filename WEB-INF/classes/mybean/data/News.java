package mybean.data;

public class News {
	// String []columnName;
	// String [][]tableRecord = null;
	String content, time, link;
	// int row = 0;
	
	public News(){
		super();
	}
	// public String [][]getTableRecord() {
	// 	return tableRecord;
	// }
	// public void setTableRecord(String [][]s) {
	// 	this.tableRecord = s;
	// }
	// public String []getColumnName() {
	// 	return columnName;
	// }
	// public void setColumnName(String []s) {
	// 	this.columnName = s;
	// }
	// public int getRow() {
	// 	return row;
	// }
	// public void setRow(int row) {
	// 	this.row = row;
	// }
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
}
