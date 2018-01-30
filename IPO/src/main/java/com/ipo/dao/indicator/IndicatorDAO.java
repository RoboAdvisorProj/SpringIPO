package com.ipo.dao.indicator;

import java.util.List;

import com.ipo.util.portfolio.SearchCriteria;
import com.ipo.vo.indicator.IndicatorVO;

public interface IndicatorDAO {

	public List<IndicatorVO> listRiskAvoid()throws Exception;
	public List<IndicatorVO> listSafetyPre()throws Exception;
	public List<IndicatorVO> listRiskNeu()throws Exception;
	public List<IndicatorVO> listActiveInv()throws Exception;
	public List<IndicatorVO> listRiskPre()throws Exception;
	
	public List<IndicatorVO> listSearch(SearchCriteria sesarchCri)throws Exception;
	public int listSearchCount(SearchCriteria searchCri)throws Exception;
}
