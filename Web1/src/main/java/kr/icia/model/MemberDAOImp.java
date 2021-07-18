package kr.icia.model;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import kr.icia.domain.MemberVO;


public class MemberDAOImp implements MemberDAO{

	@Inject
	SqlSession sqlSession;
	@Autowired private MemberDAO dao;
	
	// 회원 로그인 체크
	@Override
	public boolean loginCheck(MemberVO vo) {
		String name = sqlSession.selectOne("member.loginCheck", vo);
		return(name == null) ? false : true;
	}

	//회원 로그인 정보
	@Override
	public MemberVO viewMember(MemberVO vo) {
		return sqlSession.selectOne("member.viewMember", vo);
	
	}

	// 회원 로그아웃
	@Override
	public void logout(HttpSession session) {
		
		
	}

//	// 아이디 중복체크
//	@Override
//	public int id_check(MemberVO vo) {
//		int result = sqlSession.selectOne("MemberMapper.id_check", vo);
//		return result;
//	}

	@Override
	public void memberUpdate(MemberVO vo) throws Exception {
		sqlSession.update("MemberMapper.memberUpdate", vo);
		
	}

	//추가(6.24)
	@Override
	public void register(MemberVO vo) throws Exception {
		
		
	}

	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return sqlSession.selectOne("MemberMapper.login", vo);
	}

	//회원 탈퇴
	@Override
	public void memberDelete(MemberVO vo) throws Exception {
		sqlSession.delete("MemberMapper.memberDelete", vo);
		
	}
	


}
