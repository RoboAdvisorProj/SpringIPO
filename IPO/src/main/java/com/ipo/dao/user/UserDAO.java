package com.ipo.dao.user;

import java.util.Date;

import com.ipo.vo.login.LoginDTO;
import com.ipo.vo.user.UserVO;

public interface UserDAO {

	public UserVO login(LoginDTO loginDTO) throws Exception;

	public void keepLogin(String mid, String sessionId, Date next);

	public UserVO checkUserWithSessionKey(String value);
	
	public void register(UserVO userVO)throws Exception;
	
	public UserVO selectUser(String mId)throws Exception;
	
	public void updateUser(UserVO userVO)throws Exception;
}
