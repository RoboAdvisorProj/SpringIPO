package com.ipo.service.indicator;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ipo.dao.indicator.IndicatorDAO;
import com.ipo.util.portfolio.SearchCriteria;
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
	
	@Override
	public List<IndicatorVO> listSearchRiskAvoid(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return indicatorDAO.listSearchRiskAvoid(searchCri);
	}
	@Override
	public int listSearchCountRiskAvoid(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return indicatorDAO.listSearchCountRiskAvoid(searchCri);
	}
	@Override
	public List<IndicatorVO> listSearchSafetyPre(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return indicatorDAO.listSearchSafetyPre(searchCri);
	}
	@Override
	public int listSearchCountSafetyPre(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return indicatorDAO.listSearchCountSafetyPre(searchCri);
	}
	@Override
	public List<IndicatorVO> listSearchRiskNeu(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return indicatorDAO.listSearchRiskNeu(searchCri);
	}
	@Override
	public int listSearchCountRiskNeu(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return indicatorDAO.listSearchCountRiskNeu(searchCri);
	}
	@Override
	public List<IndicatorVO> listSearchActiveInv(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return indicatorDAO.listSearchActiveInv(searchCri);
	}
	@Override
	public int listSearchCountActiveInv(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return indicatorDAO.listSearchCountActiveInv(searchCri);
	}
	@Override
	public List<IndicatorVO> listSearchRiskPre(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return indicatorDAO.listSearchRiskPre(searchCri);
	}
	@Override
	public int listSearchCountRiskPre(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return indicatorDAO.listSearchCountRiskPre(searchCri);
	}
}
