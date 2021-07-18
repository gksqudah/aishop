package kr.icia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.icia.domain.Criteria;
import kr.icia.domain.OrderDetailVO;
import kr.icia.domain.OrderListVO;
import kr.icia.domain.OrderVO;
import kr.icia.domain.ReplyProductListVO;
import kr.icia.domain.ReplyProductVO;
import kr.icia.mapper.OrderMapper;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class OrderServiceImp implements OrderService{

	@Autowired
	private OrderMapper ordermapper;
	
	
	@Override
	public void orderInfo(OrderVO order) throws Exception {
		ordermapper.orderInfo(order);
		
	}

	@Override
	public void orderInfo_Detail(OrderDetailVO orderDetail) throws Exception {
		ordermapper.orderInfo_Details(orderDetail);
		
	}

	@Override
	public List<OrderVO> orderList(OrderVO order) throws Exception {
		return ordermapper.orderList(order);
	}

	@Override
	public List<OrderListVO> orderView(OrderVO order) throws Exception {
		return ordermapper.orderView(order);
	}

	@Override
	public void registReply(ReplyProductVO reply) throws Exception {
		ordermapper.registReply(reply);
		
	}

	@Override
	public List<ReplyProductListVO> replyList(int gdsNum) throws Exception {
		return ordermapper.replyList(gdsNum);
	}

	@Override
	public int replyGetTotal(Criteria cri) {
		return ordermapper.replyGetTotal(cri);
	}

}
