package kr.icia.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.icia.domain.CartDTO;
import kr.icia.domain.CartVO;

@Service
public interface CartService {
//    List<CartDTO> cartMoney();
//    void insert(CartDTO dto);
//    List<CartDTO> listCart(String userid);
//    void delete(int cart_id);
//    void deleteAll(String userid);
//    void update(int cart_id);
//    int sumMoney(String userid);
//    int countCart(String userid, int product_id);
//    void updateCart(CartDTO dto);
//    void modifyCart(CartDTO dto);
//    
//    public void addCart(CartVO cart) throws Exception;
//    public List<CartVO> cartList(String userId) throws Exception;
	
	public void addCart(CartVO cart) throws Exception;
	
	public List<CartVO> cartList(String userId) throws Exception;
	
	public int countCart(int gdsNum, String userId) throws Exception;
	
	public void updateCart(CartVO cart) throws Exception;
	
	public void deleteCart(CartVO cart) throws Exception;
	
	public void deleteAll(String userId) throws Exception;
	
}
