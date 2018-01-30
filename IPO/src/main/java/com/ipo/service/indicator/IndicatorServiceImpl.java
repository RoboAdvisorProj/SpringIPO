package com.ipo.service.indicator;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ipo.dao.indicator.IndicatorDAO;
import com.ipo.vo.indicator.IndicatorVO;

@Service
public class IndicatorServiceImpl implements IndicatorService {

	@Inject
	private IndicatorDAO indicatorDAO;
	
	@Override
	public List<IndicatorVO> listRiskAvoid() throws Exception {
		// TODO Auto-generated method stub
		return indicatorDAO.listRiskAvoid();
	}

	@Override
	public List<IndicatorVO> listSafetyPre() throws Exception {
		// TODO Auto-generated method stub
		return indicatorDAO.listSafetyPre();
	}

	@Override
	public List<IndicatorVO> listRiskNeu() throws Exception {
		// TODO Auto-generated method stub
		return indicatorDAO.listRiskNeu();
	}

	@Override
	public List<IndicatorVO> listActiveInv() throws Exception {
		// TODO Auto-generated method stub
		return indicatorDAO.listActiveInv();
	}

	@Override
	public List<IndicatorVO> listRiskPre() throws Exception {
		// TODO Auto-generated method stub
		return indicatorDAO.listRiskPre();
	}

}
