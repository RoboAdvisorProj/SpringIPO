package com.ipo.dao.bitcoin;

import java.util.List;

import com.ipo.vo.bitcoin.BitcoinVO;

public interface BitcoinDAO {

	public List<BitcoinVO> listAll()throws Exception;
}
