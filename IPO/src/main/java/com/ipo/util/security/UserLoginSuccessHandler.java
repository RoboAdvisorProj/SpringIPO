package com.ipo.util.security;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

public class UserLoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

	private static final Logger logger = LoggerFactory.getLogger(UserLoginSuccessHandler.class);

	@Override
	public void onAuthenticationSuccess(HttpServletRequest req, HttpServletResponse res, Authentication auth)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		logger.info("유저 아이디 : {}",auth.getName());
		logger.info("유저 권한: {}",auth.getAuthorities().toString());
		logger.info("유저 Details : {}",auth.getDetails().toString());
		logger.info("유저 Principal : {}",auth.getPrincipal().toString());
		for (GrantedAuthority a : auth.getAuthorities()) {
			logger.info(a.getAuthority());
		}

		UserDetails u = (UserDetails) auth.getPrincipal();

		logger.info(String.valueOf(u.isAccountNonExpired()));
		logger.info(String.valueOf(u.isAccountNonLocked()));
		logger.info(String.valueOf(u.isCredentialsNonExpired()));
		logger.info(String.valueOf(u.isEnabled()));

		HttpSession session = req.getSession();
		if(session != null) {
			String path = (String) session.getAttribute("prevpage");
			
	
			
			/*전페이지가 회원가입 성공페이지일경우 메인으로바꿈*/
			if(path.contains("signupSuccess")) {
				path = path.replace("user/signupSuccess", "main/main");	
			}
			/*로그인 버튼 두번 클릭시 로그인 후 다시 로그인 페이지로 가는거 방지(로그인->메인)*/
			else if(path.contains("login")) {
				path = path.replace("user/login", "main/main");	
			}
			/*전 페이지가 안정형일 경우 로그인시 안정형으로 이동*/
			else if(path.contains("riskAvoid")) {
				path = path.replace("portfolio/riskAvoid", "portfolio/list/riskAvoidList");	
			}
			/*전 페이지가 안정추구형일 경우 로그인시 안정추구형으로 이동*/
			else if(path.contains("safetyPre")) {
				path = path.replace("portfolio/safetyPre", "portfolio/list/safetyPreList");	
			}
			/*전 페이지가 위험중립형일 경우 로그인시 위험중립형으로 이동*/
			else if(path.contains("riskNeu")) {
				path = path.replace("portfolio/riskNeu", "portfolio/list/riskNeuList");	
			}
			/*전 페이지가 적극투자형일 경우 로그인시 적극투자형으로 이동*/
			else if(path.contains("activeInv")) {
				path = path.replace("portfolio/activeInv", "portfolio/list/activeInvList");	
			}
			/*전 페이지가 공격투자형일 경우 로그인시 공격투자형으로 이동*/
			else if(path.contains("riskPre")) {
				path = path.replace("portfolio/riskPre", "portfolio/list/riskPreList");	
			}
			/*전 페이지가 아이디 찾기일 경우 로그인시 메인으로 이동*/
			else if(path.contains("findId")) {
				path = path.replace("user/findId", "main/main");	
			}
			/*전 페이지가 비밀번호 찾기일 경우 로그인시 메인으로 이동*/
			else if(path.contains("findPw")) {
				path = path.replace("user/findPw", "main/main");	
			}
			/*전 페이지가 회원가입일 경우 로그인시 메인으로 이동*/
			else if(path.contains("join_first")) {
				path = path.replace("user/join_first", "main/main");	
			}
			//전 페이지가 회원가입 상세페이지일 경우 로그인시 메인으로 이동
			else if(path.contains("join_second")) {
				path = path.replace("user/join_second", "main/main");	
			}
			if(path != null) {
				session.removeAttribute("prevpage");
				getRedirectStrategy().sendRedirect(req, res, path);
			}else {
				super.onAuthenticationSuccess(req, res, auth);
			}
		} else {
			super.onAuthenticationSuccess(req, res, auth);
		}
	}

}