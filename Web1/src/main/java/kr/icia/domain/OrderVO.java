package kr.icia.domain;

public class OrderVO {
	
	private String orderId;
	private String userId;
	private String orderRec;
	private String userPost;
	private String userAddr1;
	private String userAddr2;
	private String orderTel;
	private int sum;
	private String orderDate;
	
	public String delivery;
	
	public String getDelivery() {
		return delivery;
	}
	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getOrderRec() {
		return orderRec;
	}
	public void setOrderRec(String orderRec) {
		this.orderRec = orderRec;
	}
	public String getuserPost() {
		return userPost;
	}
	public void setuserPost(String userPost) {
		this.userPost = userPost;
	}
	public String getuserAddr1() {
		return userAddr1;
	}
	public void setuserAddr1(String userAddr1) {
		this.userAddr1 = userAddr1;
	}
	public String getuserAddr2() {
		return userAddr2;
	}
	public void setuserAddr2(String userAddr2) {
		this.userAddr2 = userAddr2;
	}
	public String getorderTel() {
		return orderTel;
	}
	public void setorderTel(String orderTel) {
		this.orderTel = orderTel;
	}
	public int getsum() {
		return sum;
	}
	public void setsum(int sum) {
		this.sum = sum;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	@Override
	public String toString() {
		return "OrderVO [orderId=" + orderId + ", userId=" + userId + ", orderRec=" + orderRec + ", userPost=" + userPost
				+ ", userAddr1=" + userAddr1 + ", userAddr2=" + userAddr2 + ", orderTel=" + orderTel + ", sum="
				+ sum + ", orderDate=" + orderDate + "]";
	}
	

}
