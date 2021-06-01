package com.brownpoodle.calendar.service;

import java.util.List;

import com.brownpoodle.calendar.vo.CalendarVO;

public interface CalendarService {

	public List<CalendarVO> calendarSelectAll();
	public int calendarInsert(CalendarVO cvo);
	public int calendarUpdate(CalendarVO cvo);
	public int calendarDelete(CalendarVO cvo);
}
