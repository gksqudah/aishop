package kr.icia.mapper;

import java.util.List;

import kr.icia.domain.Criteria;
import kr.icia.domain.OrderDetailVO;
import kr.icia.domain.OrderListVO;
import kr.icia.domain.OrderVO;
import kr.icia.domain.ReplyProductListVO;
import kr.icia.domain.ReplyProductVO;

public interface OrderMapper {
	
	//주문 정보
	public void orderInfo(OrderVO order) throws Exception;

	//주문 상세정보(중복을 피하기 위해 나눔)
	public void orderInfo_Details(OrderDetailVO orderDetail) throws Exception;
	
	//주문 목록 불러오기
	public List<OrderVO> orderList(OrderVO order) throws Exception;
	
	//주문 상세 목록 불러오기
	public List<OrderListVO> orderView(OrderVO order) throws Exception;
	
	//상품 후기(댓글) 작성
	public void registReply(ReplyProductVO reply) throws Exception;
	
	//상품 후기 리스트
	public List<ReplyProductListVO> replyList(int gdsNum) throws Exception;
	
	//후기 총 개수
	public int replyGetTotal(Criteria cri);
		
	
}
