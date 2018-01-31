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
	
	/* 검색 기능 시작
	 * 
	 * 
	 */
	
	
	//안정형
	@Override
	public List<IndicatorVO> listSearchRiskAvoid(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("indicator.listSearchRiskAvoid",searchCri);
	}

	@Override
	public int listSearchCountRiskAvoid(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne("indicator.SearchCountRiskAvoidList",searchCri);
	}
	
	//안정추구형
	@Override
	public List<IndicatorVO> listSearchSafetyPre(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("indicator.listSearchSafetyPre",searchCri);
	}

	@Override
	public int listSearchCountSafetyPre(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne("indicator.SearchCountSafetyPreList",searchCri);
	}
	
	//위험중립형
	@Override
	public List<IndicatorVO> listSearchRiskNeu(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("indicator.listSearchRiskNeu",searchCri);
	}

	@Override
	public int listSearchCountRiskNeu(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne("indicator.SearchCountRiskNeuList",searchCri);
	}

	//적극투자형
	@Override
	public List<IndicatorVO> listSearchActiveInv(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("indicator.listSearchActiveInv",searchCri);
	}

	@Override
	public int listSearchCountActiveInv(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne("indicator.SearchCountActiveInvList",searchCri);
	}

	//공격투자형
	@Override
	public List<IndicatorVO> listSearchRiskPre(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("indicator.listSearchRiskPre",searchCri);
	}

	@Override
	public int listSearchCountRiskPre(SearchCriteria searchCri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne("indicator.SearchCountRiskPreList",searchCri);
	}

}
