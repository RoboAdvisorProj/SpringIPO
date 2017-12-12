package com.ipo.dao.user;

import java.util.Date;

import com.ipo.vo.login.LoginDTO;
import com.ipo.vo.user.UserVO;

public interface UserDAO {

	public UserVO logn(LoginDTO loginDTO) throws Exception;

	public void keepLogin(String mid, String sessionId, Date next);

	public UserVO checkUserWithSessionKey(String value);
}
