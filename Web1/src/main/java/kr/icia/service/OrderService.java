package kr.icia.service;

import java.util.List;

import kr.icia.domain.Criteria;
import kr.icia.domain.OrderDetailVO;
import kr.icia.domain.OrderListVO;
import kr.icia.domain.OrderVO;
import kr.icia.domain.ReplyProductListVO;
import kr.icia.domain.ReplyProductVO;

public interface OrderService {
	
	public void orderInfo(OrderVO order) throws Exception;
	
	public void orderInfo_Detail(OrderDetailVO orderDetail) throws Exception;
	
	public List<OrderVO> orderList(OrderVO order) throws Exception;
	
	public List<OrderListVO> orderView(OrderVO order) throws Exception;
	
	//상품 후기(댓글) 작성
	public void registReply(ReplyProductVO reply) throws Exception;
	
	//상품 후기 리스트
	public List<ReplyProductListVO> replyList(int gdsNum) throws Exception;
	
	//후기 총 개수
	public int replyGetTotal(Criteria cri);
	
}
