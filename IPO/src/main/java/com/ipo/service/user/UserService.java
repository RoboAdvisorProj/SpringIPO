package com.ipo.service.user;


import com.ipo.vo.user.UserVO;

public interface UserService {

	public void register(UserVO userVO) throws Exception;

	public UserVO selectUser(String mId) throws Exception;

	public void updateUser(UserVO userVO) throws Exception;

	public void deleteUser(String mid) throws Exception;

	public UserVO findAccount(String memail) throws Exception;

	public void findPw(UserVO userVO) throws Exception;
	
	public int selectCountUser()throws Exception;
}
