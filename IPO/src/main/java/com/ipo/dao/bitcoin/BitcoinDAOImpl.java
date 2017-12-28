package com.ipo.dao.bitcoin;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ipo.vo.bitcoin.BitcoinVO;

@Repository
public class BitcoinDAOImpl implements BitcoinDAO {

	@Inject
	private SqlSession session;
	
	@Override
	public List<BitcoinVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("board.listAll");
	}

}
