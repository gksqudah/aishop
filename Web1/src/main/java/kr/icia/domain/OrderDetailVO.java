package kr.icia.domain;

public class OrderDetailVO {
	
	private int orderDetailNum;
	private String orderId;
	private int gdsNum;
	private int amount;
	
	
	
	public int getorderDetailNum() {
		return orderDetailNum;
	}
	public void setorderDetailNum(int orderDetailNum) {
		this.orderDetailNum = orderDetailNum;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
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
	@Override
	public String toString() {
		return "OrderDetailVO [orderDetailNum=" + orderDetailNum + ", orderId=" + orderId + ", gdsNum=" + gdsNum
				+ ", amount=" + amount + "]";
	}

}
