package com.ipo.service.user;

import java.util.Date;

import com.ipo.vo.login.LoginDTO;
import com.ipo.vo.user.UserVO;

public interface UserService {

	public UserVO login(LoginDTO loginDTO) throws Exception;

	public void keepLogin(String mid, String sessionId, Date next) throws Exception;

	public UserVO checkLoginBefore(String value);
	
	public void register(UserVO userVO)throws Exception;
	
	public UserVO selectUser(String mId)throws Exception;
	
	public void updateUser(UserVO userVO)throws Exception;
}
