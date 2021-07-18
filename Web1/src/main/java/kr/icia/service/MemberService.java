package kr.icia.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import kr.icia.domain.Criteria;
import kr.icia.domain.MemberVO;


public interface MemberService {

	//회원가입
	public void memberJoin(MemberVO member) throws Exception;
	
	// 아이디 중복 검사
	public int idChk(MemberVO vo) throws Exception;
	
//	//로그인
//	public MemberVO memberLogin(MemberVO member) throws Exception;
	
	//아래 6.18 추가
	
	//로그인 체크(세션등록)
	public boolean loginCheck(MemberVO vo, HttpSession session);
	
	// 회원 로그인 정보
	public MemberVO viewMember(MemberVO vo);
	
	// 회원 로그아웃
	public void logout(HttpSession session);
	
	public int memberModify(MemberVO vo) throws Exception;
	
	
	
	// 회원 상세 페이지
	public MemberVO userGetDetail(String id) throws Exception;
	

	

	public void register(MemberVO vo) throws Exception;
	
	public MemberVO login(MemberVO vo) throws Exception;
	
	
	
    // 회원 목록
    public List<MemberVO> memberGetList(Criteria cri) throws Exception;
    
    // 회원 총 수
    public int memberGetTotal(Criteria cri) throws Exception;
    
    
    //회원 탈퇴
    public int memberDelete(MemberVO vo) throws Exception;

    
	public MemberVO getUser(String id);
    

	
	
//	//밑 dao로 접근하는 방식(/member/login)
//	
//
//	//회원가입시 회원 정보 저장
//	boolean member_insert(MemberVO vo);
//	
//	//마이페이지에서 회원 정보 확인
//	MemberVO member_select(String id);
//	
//	//로그인 처리
//	//HashMap : 키와 밸류를 갖는 데이터 타입
//	//Map : 사물함, Key : 열쇠, Value : 자료
//	MemberVO member_login(HashMap<String, String> map);
//	
//	//아이디 중복 확인
//	boolean member_id_check(String id);
//	
//	//마이페이지에서 회원 정보 변경 저장
//	boolean member_update(MemberVO vo);
//
//	//회원 정보 탈퇴
//	boolean member_delete(String id);
	
}


