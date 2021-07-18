package kr.icia.mapper;

import java.util.List;

import kr.icia.domain.Criteria;
import kr.icia.domain.MemberVO;

public interface MemberMapper {
	
	public MemberVO read(String Userid);
	
	// 아래 추가
	
	
	// 아이디 중복 검사
	public int idChk(MemberVO vo);
	
	//회원가입
	public void memberJoin(MemberVO member);

	//로그인
//	public MemberVO memberLogin(MemberVO member);
	public MemberVO memberLogin(String userName);
	
	public void memberJoinAuth(MemberVO member);
	
	public void register(MemberVO vo); 
	
	public MemberVO login(MemberVO vo); 
	
	// 회원 상세
	public MemberVO userGetDetail(String id);
	

	// 회원 목록 보기
	public List<MemberVO> memberGetList(Criteria cri);

	// 회원 총 수
	public int memberGetTotal(Criteria cri);
	
	//회원 수정
	public int memberModify(MemberVO member);
	
	//회원 탈퇴
	public int memberDelete(MemberVO vo);
	public void memberDeleteAuth(MemberVO member);
	
	

}
