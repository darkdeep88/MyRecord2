package com.example.demo.vo;

public class MemberVO {

	private int no;
	private String id, name, pw, email, phone;
	
	
	public MemberVO() {}
	
	
	
	public MemberVO(int no, String id, String name, String pw, String email, String phone) {
		setNo(no);
		setId(id);
		setName(name);
		setPhone(phone);
		setPw(pw);
		setEmail(email);
		
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "MemberVO [no=" + no + ", id=" + id + ", name=" + name + ", pw=" + pw + ", email=" + email + ", phone="
				+ phone + "]";
	}
	
	
	
	
}
