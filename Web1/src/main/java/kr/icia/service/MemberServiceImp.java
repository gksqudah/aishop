package kr.icia.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.icia.domain.Criteria;
import kr.icia.domain.MemberVO;
import kr.icia.mapper.MemberMapper;
import kr.icia.model.MemberDAO;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class MemberServiceImp implements MemberService{

	@Autowired
	MemberMapper membermapper;
	@Autowired private MemberDAO dao;
	
	

	// 회원가입
	@Override
	public void memberJoin(MemberVO member) throws Exception {
		
		membermapper.memberJoin(member);
		membermapper.memberJoinAuth(member);
		
	}
	
	
	// 아이디 중복검사
	@Override
	public int idChk(MemberVO vo) throws Exception {
		
		return membermapper.idChk(vo);
	}


//	// 로그인
//	@Override
//	public MemberVO memberLogin(MemberVO member) throws Exception {
//
//		return membermapper.memberLogin(member);
//		
//	}
	
	
    // 회원 상세 페이지
	@Override
	public MemberVO userGetDetail(String id) throws Exception {
		log.info("userGetDetail........" + id);
		return membermapper.userGetDetail(id);
	}
	
	
	
	
// 아래 6.24 추가

	@Inject
	MemberDAO memberdao;

	@Override
	public boolean loginCheck(MemberVO vo, HttpSession session) {
		boolean result = memberdao.loginCheck(vo);
		
		if(result) {
			MemberVO vo2 = viewMember(vo);
			//세션 등록
			session.setAttribute("id", vo2.getUserId());
			session.setAttribute("name", vo2.getMemberName());
			session.setAttribute("money", vo2.getMoney());
			session.setAttribute("member",vo);
		}
		
		return result;
	}
	
	// 회원 로그인 정보
	@Override
	public MemberVO viewMember(MemberVO vo) {
		return memberdao.viewMember(vo);
	}

	// 회원 로그아웃
	@Override
	public void logout(HttpSession session) {
		session.invalidate();
		
	}


	// controller에서 보내는 파라미터들을 memberUpdate(MemberVO vo) 로 받고
	@Override
	public int memberModify(MemberVO vo) throws Exception {
		log.info("(service) memberModify........" + vo);
		
		return membermapper.memberModify(vo);
	}



	
	
	//6.24 추가
	@Override
	public void register(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}


	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return membermapper.login(vo);
	}


	// 회원 목록 보기
	@Override
	public List<MemberVO> memberGetList(Criteria cri) throws Exception {
		
		 return membermapper.memberGetList(cri);
		 
	}


	// 회원 총 수 
    @Override
    public int memberGetTotal(Criteria cri) throws Exception {
        log.info("(service)authorGetTotal()......." + cri);
        return membermapper.memberGetTotal(cri);
    }


    // 회원 탈퇴
	@Override
	public int memberDelete(MemberVO vo) throws Exception {
		log.info("(service) memberDelete........" + vo);
		
		membermapper.memberDeleteAuth(vo);
		return membermapper.memberDelete(vo);
	}


	@Override
	public MemberVO getUser(String id) {
		log.info("get......" + id);

		return membermapper.read(id);
	}




	


	
	
	
	
}