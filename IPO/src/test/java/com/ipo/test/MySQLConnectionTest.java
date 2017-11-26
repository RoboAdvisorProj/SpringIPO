package com.ipo.test;

import java.sql.Connection;
import java.sql.DriverManager;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class MySQLConnectionTest {
	private static final Logger logger=LoggerFactory.getLogger(MySQLConnectionTest.class);
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://127.0.0.1:3306/javatest?useSSL=false&serverTimezone=Asia/Seoul";
	private static final String USER = "root";
	private static final String PW = "1234";

	@Test
	public void testConnection() throws Exception {
		Class.forName(DRIVER);
		try(Connection conn=DriverManager.getConnection(URL,USER,PW)){
			logger.info("Connection="+conn);
			logger.info("DB 연결 성공");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
