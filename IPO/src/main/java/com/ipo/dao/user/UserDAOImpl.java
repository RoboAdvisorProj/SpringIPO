package com.ipo.dao.user;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ipo.vo.login.LoginDTO;
import com.ipo.vo.user.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject 
	private SqlSession session;
	
	@Override
	public UserVO login(LoginDTO loginDTO) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne("user.login",loginDTO);
	}

	@Override
	  public void keepLogin(String mid, String sessionId, Date next) {

	    Map<String, Object> paramMap = new HashMap<String, Object>();
	    paramMap.put("mid", mid);
	    paramMap.put("sessionId", sessionId);
	    paramMap.put("next", next);
	    
	    session.update("user.keepLogin", paramMap);
	    
	  }

	  @Override
	  public UserVO checkUserWithSessionKey(String value) {

	    return session.selectOne("user.checkUserWithSessionKey", value);
	  }	
	  @Override
	public void register(UserVO userVO) throws Exception {
		// TODO Auto-generated method stub
		  session.insert("user.register",userVO);
	}
	  @Override
	public UserVO selectUser(String mId) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne("user.selectUser", mId);
	}
	  @Override
	public void updateUser(UserVO userVO) throws Exception {
		// TODO Auto-generated method stub
		  session.update("user.updateUser",userVO);
	}
}
