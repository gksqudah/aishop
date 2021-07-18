package kr.icia.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import kr.icia.domain.Criteria;
import kr.icia.domain.MemberVO;
import lombok.Setter;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class AdminMapperTest {
	
//	@Autowired
//	private AdminMapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	private AdminMapper mapper;
	
//	// 상품 등록 
//	@Test
//	public void bookEnrollTest() throws Exception{
//		
//		ProductVO gds = new ProductVO();
//		
//		gds.setGdsName("mapper 테스트");
//		gds.setGdsNum(2);
//		gds.setGdsPrice(100);
//		gds.setGdsStock(5000);
//		gds.setGdsContent("첫번째 등록 상품");
//		gds.setGdsImg("phone1.png");
//		gds.setGdsDiscount(1);
//		gds.setCateCode("10000");
//		
//		mapper.productEnroll(gds);
//	}
	
	
//	// 회원 상세 페이지 
//	@Test
//	public void memberGetDetailTest() {
//		
//		String userId = "asddsa";
//		
//		MemberVO user = mapper.memberGetDetail(userId);
//		
//		System.out.println("user......." + user);
//		
//	}
	
	
//	//회원 정보 수정
//	@Test
//	public void memberModifyTest() {
//		
//		MemberVO member = new MemberVO();
//				
//		member.setUserId("sssss");
//		System.out.println("수정 전...................." + mapper.memberGetDetail(member.getUserId()));
//		
//		member.setMoney(100);
//		member.setPoint(10);
//		
//		mapper.adMemberModify(member);
//		System.out.println("수정 후...................." + mapper.memberGetDetail(member.getUserId()));
//		
//	}
	
	/* 상품 리스트 & 상품 총 갯수 */
	@Test
	public void productGetListTest() {
		
		Criteria cri = new Criteria();
		
		/* 검색조건 */
		cri.setKeyword("phone");
		
		/* 검색 리스트 */
		List list = mapper.productGetList(cri);
		for(int i = 0; i < list.size(); i++) {
			System.out.println("result......." + i + " : " + list.get(i));
		}
		
		/* 상품 총 갯수 */
		int result = mapper.productGetTotal(cri);
		System.out.println("resutl.........." + result);
		
		
	}

}
