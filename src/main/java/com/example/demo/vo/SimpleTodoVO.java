package com.example.demo.vo;

public class SimpleTodoVO {

	private int user_no, simple_no;
	private String content, check_run;
	
	
	public SimpleTodoVO() {	}
	
	public SimpleTodoVO(int user_no, int simple_no, String content, String check_run) {
		setUser_no(user_no);
		setNo(simple_no);
		setContent(content);
		setCheck_run(check_run);
	}
	
	
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public int getNo() {
		return simple_no;
	}
	public void setNo(int no) {
		this.simple_no = no;
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
	
	
	@Override
	public String toString() {
		return "SimpleTodoVO [user_no=" + user_no + ", simple_no=" + simple_no + ", content=" + content + ", check_run=" + check_run
				+ "]";
	}
	
	
	
	
}
