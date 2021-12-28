package com.example.demo.vo;

import java.util.Date;

public class BoardVO {

	private int user_no, no;
	private String title, content, check_run, start_date, last_date;
	private Date regdate;
	//private Date start_date, last_date;
	
	public BoardVO() {}
	
	public BoardVO(int user_no, String title, String content, String check_run, String start_date,
			String last_date, int no, Date regdate) {
		setUser_no(user_no);
		setTitle(title);
		setContent(content);
		setCheck_run(check_run);
		setStart_date(start_date);
		setLast_date(last_date);
		setNo(no);
		setRegdate(regdate);
		
	}

	
	
	
	
	
	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCheck_run() {
		return check_run;
	}

	public void setCheck_run(String check_run) {
		this.check_run = check_run;
	}

	public String getStart_date() {
		return start_date;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	public String getLast_date() {
		return last_date;
	}

	public void setLast_date(String last_date) {
		this.last_date = last_date;
	}

	@Override
	public String toString() {
		return "BoardVO [user_no=" + user_no + ", no=" + no + ", title=" + title + ", content=" + content
				+ ", check_run=" + check_run + ", start_date=" + start_date + ", last_date=" + last_date + ", regdate="
				+ regdate + "]";
	}

	
	

	
	
	
	
	
	
	
	
	
}
