package kr.icia.model;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.icia.domain.MemberVO;

@Repository
public interface MemberDAO {
	// 회원 로그인 체크
	@Autowired
	public boolean loginCheck(MemberVO vo);
	// 회원 로그인 정보
	@Autowired
	public MemberVO viewMember(MemberVO vo);
	// 회원 로그아웃
	@Autowired
	public void logout(HttpSession session);
	
	
//	// 아이디 중복체크
//	public int id_check(MemberVO vo) throws Exception;
	
	// 회원정보 수정
	public void memberUpdate(MemberVO vo) throws Exception;
	
	
	// 아래 추가
	// 회원 가입
	public void register(MemberVO vo) throws Exception;
	
	//로그인
	public MemberVO login(MemberVO vo) throws Exception;
	
	
	//회원 탈퇴
	public void memberDelete(MemberVO vo) throws Exception;
	
	

	
	
	
	

	
	
}
