package com.ipo.dao.indicator;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ipo.util.portfolio.SearchCriteria;
import com.ipo.vo.indicator.IndicatorVO;

@Repository
public class IndicatorDAOImpl implements IndicatorDAO {

	@Inject
	private SqlSession session;
	
	@Override
	public List<IndicatorVO> listRiskAvoid() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("indicator.listRiskAvoid");
	}

	@Override
	public List<IndicatorVO> listSafetyPre() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("indicator.listSafetyPre");
	}

	@Override
	public List<IndicatorVO> listRiskNeu() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("indicator.listRiskNeu");
	}

	@Override
	public List<IndicatorVO> listActiveInv() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("indicator.listActiveInv");
	}

	@Override
	public List<IndicatorVO> listRiskPre() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("indicator.listRiskPre");
	}
	@Override
	public List<IndicatorVO> listSearch(SearchCriteria sesarchCri) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int listSearchCount(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
