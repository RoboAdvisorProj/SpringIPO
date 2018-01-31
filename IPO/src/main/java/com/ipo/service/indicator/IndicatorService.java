package com.ipo.service.indicator;

import java.util.List;

import com.ipo.util.portfolio.SearchCriteria;
import com.ipo.vo.indicator.IndicatorVO;

public interface IndicatorService {

	public List<IndicatorVO> listRiskAvoid()throws Exception;
	public List<IndicatorVO> listSafetyPre()throws Exception;
	public List<IndicatorVO> listRiskNeu()throws Exception;
	public List<IndicatorVO> listActiveInv()throws Exception;
	public List<IndicatorVO> listRiskPre()throws Exception;
	
	//안정형 검색
		public List<IndicatorVO> listSearchRiskAvoid(SearchCriteria searchCri)throws Exception;
		public int listSearchCountRiskAvoid(SearchCriteria searchCri)throws Exception;
		//안정추구형 검색
		public List<IndicatorVO> listSearchSafetyPre(SearchCriteria searchCri)throws Exception;
		public int listSearchCountSafetyPre(SearchCriteria searchCri)throws Exception;
		//위험중립형 검색
		public List<IndicatorVO> listSearchRiskNeu(SearchCriteria searchCri)throws Exception;
		public int listSearchCountRiskNeu(SearchCriteria searchCri)throws Exception;
		//적극투자형 검색
		public List<IndicatorVO> listSearchActiveInv(SearchCriteria searchCri)throws Exception;
		public int listSearchCountActiveInv(SearchCriteria searchCri)throws Exception;
		//공격투자형 검색
		public List<IndicatorVO> listSearchRiskPre(SearchCriteria searchCri)throws Exception;
		public int listSearchCountRiskPre(SearchCriteria searchCri)throws Exception;
}
