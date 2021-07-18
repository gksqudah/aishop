package kr.icia.domain;

public class OrderListVO {
	
	private String orderId;
	private String userId;
	private String orderRec;
	private String userPost;
	private String userAddr1;
	private String userAddr2;
	private String orderTel;
	private int sum;
	private String orderDate;
	
	private int orderDetailNum;
	private int gdsNum;
	private int amount;
	private String gdsName;
	private String gdsImg;
	private int gdsPrice;
	private String delivery;
	
	
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
	public String getUserPost() {
		return userPost;
	}
	public void setUserPost(String userPost) {
		this.userPost = userPost;
	}
	public String getUserAddr1() {
		return userAddr1;
	}
	public void setUserAddr1(String userAddr1) {
		this.userAddr1 = userAddr1;
	}
	public String getUserAddr2() {
		return userAddr2;
	}
	public void setUserAddr2(String userAddr2) {
		this.userAddr2 = userAddr2;
	}
	public String getorderTel() {
		return orderTel;
	}
	public void setorderTel(String orderTel) {
		this.orderTel = orderTel;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public int getOrderDetailNum() {
		return orderDetailNum;
	}
	public void setOrderDetailNum(int orderDetailNum) {
		this.orderDetailNum = orderDetailNum;
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
	public String getGdsName() {
		return gdsName;
	}
	public void setGdsName(String gdsName) {
		this.gdsName = gdsName;
	}
	public String getGdsImg() {
		return gdsImg;
	}
	public void setGdsImg(String gdsImg) {
		this.gdsImg = gdsImg;
	}
	public int getGdsPrice() {
		return gdsPrice;
	}
	public void setGdsPrice(int gdsPrice) {
		this.gdsPrice = gdsPrice;
	}
	@Override
	public String toString() {
		return "OrderListVO [orderId=" + orderId + ", userId=" + userId + ", orderRec=" + orderRec + ", userPost="
				+ userPost + ", userAddr1=" + userAddr1 + ", userAddr2=" + userAddr2 + ", orderTel=" + orderTel + ", sum=" + sum
				+ ", orderDate=" + orderDate + ", orderDetailNum=" + orderDetailNum + ", gdsNum=" + gdsNum + ", amount="
				+ amount + ", gdsName=" + gdsName + ", gdsImg=" + gdsImg + ", gdsPrice=" + gdsPrice + "]";
	}
	

}
