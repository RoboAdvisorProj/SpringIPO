package com.ipo.test.mybatisconn;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class MybatisConnection {
	private static final Logger logger = LoggerFactory.getLogger(MybatisConnection.class);

	@Inject
	DataSource ds;

	@Test
	public void testConnection() throws Exception {
		try (Connection conn = ds.getConnection()) {

			logger.info("Mybatis 연결 성공=" + logger);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
