package kr.icia.domain;

import java.util.Date;

public class CartVO {
	
	private int cartNum;
	private String userId;
	private int gdsNum;
	private int amount;
	private Date addDate;
	
	private String gdsName;
	private int gdsPrice;
	private String gdsImg;
	
	
	public String getGdsName() {
		return gdsName;
	}
	public void setGdsName(String gdsName) {
		this.gdsName = gdsName;
	}
	public int getGdsPrice() {
		return gdsPrice;
	}
	public void setGdsPrice(int gdsPrice) {
		this.gdsPrice = gdsPrice;
	}
	public String getGdsImg() {
		return gdsImg;
	}
	public void setGdsImg(String gdsImg) {
		this.gdsImg = gdsImg;
	}
	public int getCartNum() {
		return cartNum;
	}
	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getGdsNum() {
		return gdsNum;
	}
	public void setGdsNum(int gdsNum) {
		this.gdsNum = gdsNum;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public Date getAddDate() {
		return addDate;
	}

	@Override
	public String toString() {
		return "CartVO [cartNum=" + cartNum + ", userId=" + userId + ", gdsNum=" + gdsNum + ", amount=" + amount
				+ ", addDate=" + addDate + ", gdsName=" + gdsName + ", gdsPrice=" + gdsPrice + ", gdsImg=" + gdsImg
				+ "]";
	}
	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}
	

	

		
}
