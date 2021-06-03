package com.edu.test;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

/**
 *  이 클래스는 오라클과 연동해서 CRUD를 테스트하는 클래스 입니다.
 *  과장(이사,팀장) JUnit CRUD까지 만들어서 일반사원에게 공개 + 회원관리
 * @author 성한솔
 *
 */
//RunWith인터페이스 현재클래스가 JUnit실행클래스라고 명시
@RunWith(SpringJUnit4ClassRunner.class)
//경로에서 **는 모든폴더를 명시한다, *는 모든파일명을 명시함.
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
@WebAppConfiguration
public class DataSourceTest {
	//디버그용 로그 변수 생성
	private Logger logger = Logger.getLogger(DataSourceTest.class);
	
	@Test
	public void junittest() {
		//logger의 장점 > 조건에 따라서 출력을 조정할 수 있음.
		logger.debug("Junit테스트 시작 입니다.");
	}
}