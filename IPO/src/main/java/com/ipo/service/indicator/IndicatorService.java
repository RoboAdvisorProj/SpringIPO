package com.ipo.service.indicator;

import java.util.List;

import com.ipo.vo.indicator.IndicatorVO;

public interface IndicatorService {

	public List<IndicatorVO> listRiskAvoid()throws Exception;
	public List<IndicatorVO> listSafetyPre()throws Exception;
	public List<IndicatorVO> listRiskNeu()throws Exception;
	public List<IndicatorVO> listActiveInv()throws Exception;
	public List<IndicatorVO> listRiskPre()throws Exception;
}
