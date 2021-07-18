package kr.icia.mapper;

import java.util.List;

import kr.icia.domain.CartVO;

public interface CartMapper {
	
	public void addCart(CartVO cart) throws Exception;
	
	public List<CartVO> cartList(String userId) throws Exception;
	
	public int countCart(int gdsNum, String userId) throws Exception;
	
	public void updateCart(CartVO cart) throws Exception;
	
	public void deleteCart(CartVO cart) throws Exception;
	
	public void deleteAll(String userId) throws Exception;
 
}
