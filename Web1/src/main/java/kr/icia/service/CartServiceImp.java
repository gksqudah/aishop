package kr.icia.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.icia.domain.CartVO;
import kr.icia.mapper.CartMapper;
import kr.icia.model.CartDAO;

@Service //Service 단이라는 것을 표시
public class CartServiceImp implements CartService {

	@Autowired
	private CartMapper cartMapper; 
	
	@Inject
	CartDAO cartdao;    @Inject
    SqlSession sqlSession;
	
	@Override
	public void addCart(CartVO cart) throws Exception {
		
		cartMapper.addCart(cart);
		
	}

	@Override
	public List<CartVO> cartList(String userId) throws Exception {
		return cartMapper.cartList(userId);
	}

	@Override
	public int countCart(int gdsNum, String userId) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("gdsNum", gdsNum);
		map.put("userId", userId);
		return sqlSession.selectOne("countCart", map);
	}

	@Override
	public void updateCart(CartVO cart) throws Exception {
		cartMapper.updateCart(cart);
		
	}

	@Override
	public void deleteCart(CartVO cart) throws Exception {
	   cartMapper.deleteCart(cart);
		
	}

	@Override
	public void deleteAll(String userId) throws Exception {
		 cartMapper.deleteAll(userId);
		
	}


    
//    @Inject //dao를 사용해야하기 때문에 @Inject로 의존성 부여
//    CartDAO cartDao;
//    
//    @Override
//    public List<CartDTO> cartMoney() {
//        return null;
//    }
//    @Override
//    public void insert(CartDTO dto) {
//        cartDao.insert(dto);
//    }
// 
//    @Override
//    public List<CartDTO> listCart(String userid) {
//        return cartDao.listCart(userid);
//    }
// 
//    @Override
//    public void delete(int cart_id) {
//        cartDao.delete(cart_id);
//    }
// 
//    @Override
//    public void deleteAll(String userid) {
//        cartDao.deleteAll(userid);
//    }
// 
//    @Override
//    public void update(int cart_id) {
//        // TODO Auto-generated method stub
// 
//    }
// 
//    @Override
//    public int sumMoney(String userid) {
//        return cartDao.sumMoney(userid);
//    }
// 
//    @Override
//    public int countCart(String userid, int product_id) {
//        // TODO Auto-generated method stub
//        return 0;
//    }
// 
//    @Override
//    public void updateCart(CartDTO dto) {
//        // TODO Auto-generated method stub
// 
//    }
// 
//    @Override
//    public void modifyCart(CartDTO dto) {
//        cartDao.modifyCart(dto);
//    }
//    
//    
//	@Override
//	public void addCart(CartVO cart) throws Exception {
//		cartDao.addCart(cart);
//		
//	}
//	@Override
//	public List<CartVO> cartList(String userId) throws Exception {
//		return cartDao.cartList(userId);
//	}
	
	
 
}
 
