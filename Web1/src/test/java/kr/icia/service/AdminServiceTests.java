package kr.icia.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import kr.icia.domain.MemberVO;
import lombok.Setter;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class AdminServiceTests {
	
	@Setter(onMethod_ = {@Autowired })
	private AdminService service;
	
//	@Test
//	public void memberGetDetailTest() throws Exception{
//		
//		String userId = "asddsa";
//		
//		System.out.println("user........." + service.memberGetDetail(userId));
//	}
	
	@Test
	public void adMemberModifyTest() throws Exception{
		MemberVO member = new MemberVO();
		
		member.setUserId("sssss");
		System.out.println("(service)수정 전................." + service.memberGetDetail(member.getUserId()));
		
		member.setMoney(10);
		member.setPoint(10);
		
		service.adMemberModify(member);
		System.out.println("(service)수정 후.................." + service.memberGetDetail(member.getUserId()));
	}

}
