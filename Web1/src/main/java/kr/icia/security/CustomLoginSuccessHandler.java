package kr.icia.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import kr.icia.domain.MemberVO;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth)
			throws IOException, ServletException {
		// authentication 객체를 이용해 사용자가 가진 모든 권한을 문자열로 체크.

		log.warn("Login Success");
		
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String user_id = member.getUserId();

		

		List<String> roleNames = new ArrayList<>();

		auth.getAuthorities().forEach(authority -> {

			roleNames.add(authority.getAuthority());

		});

		log.warn("ROLE NAMES: " + roleNames);

		// 만일 사용자가 role_admin 권한을 가졌다면 로그인 후 sample/admin으로 이동.
		if (roleNames.contains("ROLE_ADMIN")) {

			response.sendRedirect("/sample/admin");
			return;
		}

		if (roleNames.contains("ROLE_MEMBER")) {

			response.sendRedirect("/sample/member");
			return;
		}

		response.sendRedirect("/");
	}
}


