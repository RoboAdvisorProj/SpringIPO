package com.ipo.service.bitcoin;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ipo.dao.bitcoin.BitcoinDAO;
import com.ipo.vo.bitcoin.BitcoinVO;

@Service
public class BitcoinServiceImpl implements BitcoinService {

	@Inject
	private BitcoinDAO bitcoinDAO;
	
	@Override
	public List<BitcoinVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return bitcoinDAO.listAll();
	}

}
