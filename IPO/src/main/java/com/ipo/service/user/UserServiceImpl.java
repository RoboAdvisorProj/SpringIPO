package com.ipo.service.user;

import java.util.Date;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ipo.dao.user.UserDAO;
import com.ipo.vo.login.LoginDTO;
import com.ipo.vo.user.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	private UserDAO userDAO;
	
	@Override
	public UserVO login(LoginDTO loginDTO) throws Exception {
		// TODO Auto-generated method stub
		return userDAO.login(loginDTO);
	}
	@Override
	public void keepLogin(String mid, String sessionId, Date next) throws Exception {
		// TODO Auto-generated method stub
		
		userDAO.keepLogin(mid, sessionId, next);
		}
	@Override
	public UserVO checkLoginBefore(String value) {
		// TODO Auto-generated method stub
		return userDAO.checkUserWithSessionKey(value);
	}
	
}
