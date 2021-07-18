package kr.icia.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import kr.icia.domain.CartVO;
import lombok.Setter;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class CartMapperTest {
	

	
	@Setter(onMethod_ = @Autowired)
	private CartMapper mapper;
	
//	// 상품 등록 
//	@Test
//	public void bookEnrollTest() throws Exception{
//		
//		CartVO cart = new CartVO();
//		System.out.println("cart........" + cart);
//		
//		cart.setCartNum(1);
//		cart.setUserId("sssss");
//		cart.setGdsNum(507);
//		cart.setAmount(1);
//
//		
//		mapper.addCart(cart);
//		System.out.println("cart......." + cart);
//	}

	
	@Test
	public void countCart() throws Exception{
		CartVO cart = new CartVO();
		
		cart.setUserId("qweqweqwe");
		cart.setGdsNum(507);;
		
		mapper.countCart(507, "qweqwe");
		
		System.out.println("cart..........." + cart);
	}
}
