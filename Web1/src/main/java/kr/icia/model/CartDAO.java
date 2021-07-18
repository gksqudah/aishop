package kr.icia.model;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.icia.domain.CartDTO;
import kr.icia.domain.CartVO;
 
@Repository
public interface CartDAO {
    List<CartDTO> cartMoney();
    void insert(CartDTO dto); //장바구니 추가
    List<CartDTO> listCart(String userid); //장바구니 목록
    void delete(int cart_id); //장바구니 개별 삭제
    void deleteAll(String userid); //장바구니 비우기
   
    int sumMoney(String userid); //장바구니 금액 합계
    void updateCart(CartDTO dto); //장바구니 수정 
    void modifyCart(CartDTO dto);
    
    public void addCart(CartVO cart) throws Exception;
    public List<CartVO> cartList(String userId) throws Exception;
    
    
    int countCart(String userId, int gdsNum); //장바구니 상품 갯수
    void updateCart(CartVO cart); 
}
