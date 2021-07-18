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
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@Log4j
public class MemberMapperTests {

  @Setter(onMethod_ = @Autowired)
  private MemberMapper mapper;
  
  
//  @Test
//  public void testRead() {
//    
//    MemberVO vo = mapper.read("admin90");
//    
//    log.info(vo);
//    
//    vo.getAuthList().forEach(authVO -> log.info(authVO));
//    
//  }
  
  
//  // 회원 목록 테스트 
//  @Test
//  public void memberGetListTest() throws Exception{
//      
//      Criteria cri = new Criteria(3,10);    // 3페이지 & 10개 행 표시
////      cri.setKeyword("홍길동");
//      
//      List<MemberVO> list = mapper.memberGetList(cri);
//      
//      
//      for(int i = 0; i < list.size(); i++) {
//          System.out.println("list" + i + ".........." + list.get(i));
//      }
//      
//  }
  
  
//  // 회원 총 수 테스트
//  @Test
//  public void memberGetTotal() throws Exception{
//	  
//	  Criteria cri = new Criteria();
//	  cri.setKeyword("일반");
//	  
//	  int total = mapper.memberGetTotal(cri);
//	  
//	  System.out.println("total............." + total);
//	  
//  }
  
  
  
//  // 아이디 중복 검사
//  @Test
//  public void memberIdChk() throws Exception{
//	  String id = "admin99";
//	  String id2 = "fhkhenqkk";
//	  mapper.idChk(id);
//	  mapper.idChk(id2);
//  }
  
  
  
//  // 회원 상세 페이지
//  @Test
//  public void userGetDetail() {
//	  
//	  String id = "sssss";
//	  
//	 MemberVO vo = mapper.userGetDetail(id);
//	 
//	 System.out.println("user.............." + vo);
//  }
  
  // 내 정보 수정
  @Test
  public void memberModifyTest() {
	  MemberVO member = new MemberVO();
	  
	  member.setUserId("sssss");
	  System.out.println("수정 전........." + mapper.userGetDetail(member.getUserId()));
	  
	  member.setUserPw("asdASD1231");
	  member.setTel("123-1111-1111");
	  member.setEmail("2@naver.com");
	  
	  mapper.memberModify(member);
	  System.out.println("수정 후..........." + mapper.userGetDetail(member.getUserId()));
  }
  


}



