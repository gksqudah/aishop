package kr.icia.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class MemberVO {

//	private String userId;
//	private String userPw;
	private String userName;
	private int enabled;

	private Date regDate;
	private Date updateDate;
	private List<AuthVO> authList;
	
	private int num;
	
	
	//아래 추가

	//회원 id
	private String id;
	private String pw;
	
	private String name;
	private String gender;
	private String tel;
	private String birth;
	
	//회원 비밀번호
//	private String memberPw;
	
	//회원 이름
//	private String memberName;
	
	//회원 이메일
	private String email;
	
	//회원 우편번호
	private String post;
	
	//회원 주소
	private String address1;
	
	//회원 상세주소
	private String address2;
	

	
	
	//회원 돈
	private int money;
	
	//회원 포인트
	private int point;

	public String getUserId() {
		return id;
	}

	public void setUserId(String id) {
		this.id = id;
	}

	public String getUserPw() {
		return pw;
	}

	public void setUserPw(String pw) {
		this.pw= pw;
	}

	public String getMemberName() {
		return name;
	}

	public void setMemberName(String name) {
		this.name = name;
	}
	
	public String getMemberName1() {
		return userName;
	}

	public void setMemberName1(String userName) {
		this.userName = userName;
	}

	public String getMemberMail() {
		return email;
	}

	public void setMemberMail(String email) {
		this.email = email;
	}
	
	public String getMemberBirth() {
		return birth;
	}
	
	public void setMemberBirth(String birth) {
		this.birth = birth;
	}
	

	public String getMemberAddr1() {
		return post;
	}

	public void setMemberAddr1(String post) {
		this.post = post;
	}

	public String getMemberAddr2() {
		return address1;
	}

	public void setMemberAddr2(String address1) {
		this.address1 = address1;
	}

	public String getMemberAddr3() {
		return address2;
	}

	public void setMemberAddr3(String address2) {
		this.address2 = address2;
	}

	public int getenabled() {
		return enabled;
	}

	public void setenabled(int enabled) {
		this.enabled = enabled;
	}


	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}
	
	public String getTel() {
		return tel;
	}
	
	public void setTel(String tel) {
		this.tel = tel;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw=" + pw + ", name=" + name
				+ ", userMail=" + email+ ", post=" + post + ", address1=" + address1
				+ ", address2=" + address2 + ", enabled=" + enabled + ", regDate=" + regDate + ", money=" + money
				+ ", point=" + point + "]"+ ", tel=" + tel + "]" ;
	}

	
	
}

