package kr.icia.mapper;

import java.util.List;

import kr.icia.domain.Criteria;
import kr.icia.domain.MemberVO;
import kr.icia.domain.OrderListVO;
import kr.icia.domain.OrderVO;
import kr.icia.domain.ProductVO;

public interface AdminMapper {
	
	// 상품 등록
	public void productEnroll(ProductVO vo);
	
	//회원 상세 페이지
	public MemberVO memberGetDetail(String userId);
	
	//회원 수정
	public int adMemberModify(MemberVO vo);
	
	// 상품 리스트
	public List<ProductVO> productGetList(Criteria cri);
	
	// 상품 총 개수
	public int productGetTotal(Criteria cri);
	
	
	//상품 상세 페이지
	public ProductVO productGetDetail(String gdsName);
	
	//상품 상세 페이지
	public ProductVO productGetDetail2(int gdsNum);

	//상품 수정
	public int adProductModify(ProductVO vo);
	
	// 상품 삭제
	public int adProductDelete(ProductVO vo);
	
	// 상품 리스트
	public List<ProductVO> phoneGetList(Criteria cri);	
	public List<ProductVO> wearableGetList(Criteria cri);	
	public List<ProductVO> premiumGetList(Criteria cri);	
	
	
	// 모든 유저 주문리스트
	public List<OrderVO> orderList() throws Exception;
	
	// 특정 주문 목록
	public List<OrderListVO> orderView(OrderVO order) throws Exception;
	
	// 주문리스트 총 개수
	public int orderListGetTotal(Criteria cri);
	
	// 배송 처리
	public void delivery(OrderVO order) throws Exception;
	
	// 상품 수량 감소
	public void changeStock(ProductVO product) throws Exception;
	
	//  목록 보기
	public List<MemberVO> blackGetList(Criteria cri);
	
    // 회원 총 수
    public int blackGetTotal(Criteria cri) throws Exception;
	
	
}
