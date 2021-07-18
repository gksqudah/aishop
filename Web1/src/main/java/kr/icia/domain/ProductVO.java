package kr.icia.domain;

public class ProductVO {
	
	/* 상품 id */
	private int gdsNum;
	
	/* 상품 이름 */
	private String gdsName;
	
	/* 상품 가격 */
	private int gdsPrice;
	
	/* 상품 재고 */
	private int gdsStock;

	/* 상품 내용 */
	private String gdsContent;
	
	/* 상품 이미지 */
	private String gdsImg;
	
	/* 상품 할인 */
	private int gdsDiscount;
	
	/* 카테고리 코드 */
	private String cateCode;
	
	// 상품 상세설명
	private String gdsDetailCon;
	
	

	public int getGdsNum() {
		return gdsNum;
	}

	public void setGdsNum(int gdsNum) {
		this.gdsNum = gdsNum;
	}

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

	public int getGdsStock() {
		return gdsStock;
	}

	public void setGdsStock(int gdsStock) {
		this.gdsStock = gdsStock;
	}

	public String getGdsContent() {
		return gdsContent;
	}

	public void setGdsContent(String gdsContent) {
		this.gdsContent = gdsContent;
	}

	public String getGdsImg() {
		return gdsImg;
	}

	public void setGdsImg(String gdsImg) {
		this.gdsImg = gdsImg;
	}

	public int getGdsDiscount() {
		return gdsDiscount;
	}

	public void setGdsDiscount(int gdsDiscount) {
		this.gdsDiscount = gdsDiscount;
	}

	public String getcateCode() {
		return cateCode;
	}

	public void setcateCode(String cateCode) {
		this.cateCode = cateCode;
	}
	

	public String getGdsDetailCon() {
		return gdsDetailCon;
	}

	public void setGdsDetailCon(String gdsDetailCon) {
		this.gdsDetailCon = gdsDetailCon;
	}

	@Override
	public String toString() {
		return "ProductVO [gdsNum=" + gdsNum + ", gdsName=" + gdsName + ", gdsPrice=" + gdsPrice + ", gdsStock="
				+ gdsStock + ", gdsContent=" + gdsContent + ", gdsImg=" + gdsImg + ", gdsDiscount=" + gdsDiscount
				+ ", cateCode=" + cateCode + "]";
	}
	

}
