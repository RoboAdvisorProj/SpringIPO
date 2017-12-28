package com.ipo.service.bitcoin;

import java.util.List;

import com.ipo.vo.bitcoin.BitcoinVO;

public interface BitcoinService {

	public List<BitcoinVO> listAll()throws Exception;
}
