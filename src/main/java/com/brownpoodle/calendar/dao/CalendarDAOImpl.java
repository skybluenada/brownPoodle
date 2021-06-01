package com.brownpoodle.calendar.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.brownpoodle.calendar.vo.CalendarVO;

@Repository
public class CalendarDAOImpl implements CalendarDAO {

	Logger logger = Logger.getLogger(CalendarDAOImpl.class);
	
	@Autowired(required=false)
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<CalendarVO> calendarSelectAll() {
		logger.info("CalendarDAOImpl calendarSelectAll 진입 성공 >>> :");
		logger.debug("selectList(calendarSelectAll);"+ sqlSession.selectList("calendarSelectAll"));
		//logger.info("");
		
		return sqlSession.selectList("calendarSelectAll");
	}

	@Override
	public int calendarInsert(CalendarVO cvo) {
		logger.info("CalendarDAOImpl calendarInsert 진입 성공 >>> :");
		
		return sqlSession.insert("calendarInsert");
	}

	@Override
	public int calendarUpdate(CalendarVO cvo) {
		logger.info("CalendarDAOImpl calendarUpdate 진입 성공 >>> :");
		
		return sqlSession.update("calendarUpdate");
	}

	@Override
	public int calendarDelete(CalendarVO cvo) {
		logger.info("CalendarDAOImpl calendarDelete 진입 성공 >>> :");
		
		return sqlSession.delete("calendarDelete");
	}

}
