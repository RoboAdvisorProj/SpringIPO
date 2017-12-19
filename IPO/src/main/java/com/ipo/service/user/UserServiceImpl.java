package com.ipo.service.user;

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
	public void register(UserVO userVO) throws Exception {
		// TODO Auto-generated method stub
	userDAO.register(userVO);	
	}
	@Override
	public UserVO selectUser(String mId) throws Exception {
		// TODO Auto-generated method stub
		return userDAO.selectUser(mId);
	}
	 @Override
	public void updateUser(UserVO userVO) throws Exception {
		// TODO Auto-generated method stu
		 userDAO.updateUser(userVO);
	}
}
