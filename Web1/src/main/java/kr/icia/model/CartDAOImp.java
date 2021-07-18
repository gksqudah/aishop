package kr.icia.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;

import kr.icia.domain.CartDTO;
import kr.icia.domain.CartVO;


public class CartDAOImp implements CartDAO {
    
    //MyBatis를 호출하므로 sqlsession에 의존성을 주입해야한다.

    @Inject
    SqlSession sqlSession;
    
    @Override
    public List<CartDTO> cartMoney() {
        // TODO Auto-generated method stub
        return null;
    }
    //장바구니에 담기
    @Override
    public void insert(CartDTO dto) {
    //dto에 저장된 값을 받아서 sql세션에 저장하고 cart.insert로 넘어감 mapper로.
        sqlSession.insert("cart.insert", dto); 
    }
 
    @Override
    public List<CartDTO> listCart(String userid) {
        return sqlSession.selectList("cart.listCart", userid);
    }
 
    @Override
    public void delete(int cart_id) {
        sqlSession.delete("cart.delete", cart_id);
    }
 
    @Override
    public void deleteAll(String userid) {
        sqlSession.delete("cart.deleteAll", userid);
    }
 

 
    @Override
    public int sumMoney(String userid) {
        return sqlSession.selectOne("cart.sumMoney", userid); 
    }
 
	@Override
	public void updateCart(CartDTO dto) {
		// TODO Auto-generated method stub
		
	}
 
 
    @Override
    public void modifyCart(CartDTO dto) {
        sqlSession.update("cart.modify", dto);
    }
    
    
	@Override
	public void addCart(CartVO cart) throws Exception {
		sqlSession.insert( ".addCart", cart);
		
	}
	@Override
	public List<CartVO> cartList(String userId) throws Exception {
		return sqlSession.selectList(".cartList", userId);
	}
	
	
    @Override
    public int countCart(String userId, int gdsNum) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("gdsNum", gdsNum);
		map.put("userId", userId);
		return sqlSession.selectOne("countCart", map);
    }
	
    @Override
    public void updateCart(CartVO cart) {
       sqlSession.update("updateCart", cart);
 
    }

 
}
 
