package kr.icia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.icia.domain.Criteria;
import kr.icia.domain.MemberVO;
import kr.icia.domain.OrderListVO;
import kr.icia.domain.OrderVO;
import kr.icia.domain.ProductVO;
import kr.icia.mapper.AdminMapper;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class AdminServiceImp implements AdminService{

	@Autowired
	private AdminMapper adminMapper;
	
	@Override
	public void productEnroll(ProductVO product) {
		log.info("(service)prodcutEnroll.........");
		
		adminMapper.productEnroll(product);
		
	}

	@Override
	public MemberVO memberGetDetail(String userId) throws Exception {
		log.info("memberGetDetail........" + userId);
		return adminMapper.memberGetDetail(userId);
	}

	@Override
	public int adMemberModify(MemberVO member) throws Exception {
		log.info("(service) memberModify........." + member);
		return adminMapper.adMemberModify(member);
	}

	@Override
	public List<ProductVO> productGetList(Criteria cri) {
		log.info("goodsGetTotalList()..........");
		return adminMapper.productGetList(cri);
	}

	@Override
	public int productGetTotal(Criteria cri) {
		log.info("goodsGetTotal().........");
		return adminMapper.productGetTotal(cri);
	}

	@Override
	public ProductVO productGetDetail(String gdsName) throws Exception {
		log.info("memberGetDetail........" + gdsName);
		
		return adminMapper.productGetDetail(gdsName);
	}
	
	@Override
	public ProductVO productGetDetail2(int gdsNum) throws Exception {
		log.info("memberGetDetail........" + gdsNum);
		
		return adminMapper.productGetDetail2(gdsNum);
	}

	@Override
	public int adProductModify(ProductVO vo) throws Exception {
		log.info("(service) productModify........." + vo);
		return adminMapper.adProductModify(vo);
	}

	@Override
	public int adProductDelete(ProductVO vo) throws Exception {
		return adminMapper.adProductDelete(vo);
	}

	@Override
	public List<ProductVO> phoneGetList(Criteria cri) {
		log.info("phoneGetList()..........");
		return adminMapper.phoneGetList(cri);
	}

	@Override
	public List<ProductVO> wearableGetList(Criteria cri) {
		return adminMapper.wearableGetList(cri);
	}

	@Override
	public List<ProductVO> premiumGetList(Criteria cri) {
		return adminMapper.premiumGetList(cri);
	}

	@Override
	public List<OrderVO> orderList() throws Exception {
		return adminMapper.orderList();
	}

	@Override
	public List<OrderListVO> orderView(OrderVO order) throws Exception {
		return adminMapper.orderView(order);
	}

	@Override
	public int orderListGetTotal(Criteria cri) {
		return adminMapper.orderListGetTotal(cri);
	}

	@Override
	public void delivery(OrderVO order) throws Exception {
		adminMapper.delivery(order);
		
	}

	@Override
	public void changeStock(ProductVO product) throws Exception {
		adminMapper.changeStock(product);
		
	}

	@Override
	public List<MemberVO> blackGetList(Criteria cri) throws Exception {
		return adminMapper.blackGetList(cri);
	}

	@Override
	public int blackGetTotal(Criteria cri) throws Exception {
		return adminMapper.blackGetTotal(cri);
	}

}
