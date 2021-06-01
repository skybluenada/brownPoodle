package com.brownpoodle.calendar.controller;

import java.io.FileWriter;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.brownpoodle.calendar.service.CalendarService;
import com.brownpoodle.calendar.vo.CalendarVO;


@Controller
public class CalendarController {

	Logger logger = Logger.getLogger(CalendarController.class);
	
	@Autowired(required=false)
	private CalendarService calendarService;
	

	// 캘린더 전체조회
	@RequestMapping(value="/calendarSelectAll.bp", method=RequestMethod.GET)
	public String calendarSelectAll(CalendarVO cvo, Model model) {
		logger.info("CalendarController calendarSelectAll 진입 성공 >>> : ");
//		
//		List<CalendarVO> aList = calendarService.calendarSelectAll();
//		
//		
//		List jsonCalendar = new ArrayList();
//		
//		for(int i = 0 ; i < aList.size();i++){
//			CalendarVO cvo_1 = aList.get(i);
//			JSONObject jobj = new JSONObject();
//			jobj.put("_id", cvo_1.getCal_no());
//			jobj.put("title", cvo_1.getCal_title());
//			jobj.put("description", cvo_1.getCal_description());
//			jobj.put("start", cvo_1.getCal_startdate());
//			jobj.put("end", cvo_1.getCal_enddate());
//			jobj.put("type", cvo_1.getCal_type());
//			jobj.put("username", cvo_1.getM_id());
//			jobj.put("backgroundColor", cvo_1.getCal_backgroundColor());
//			jobj.put("textColor", cvo_1.getCal_textColor());
//			boolean bool = false;
//			if("true".equals(cvo_1.getCal_allDay())){
//				bool = true;
//			}
//			jobj.put("allDay", bool);
//			
//			jsonCalendar.add(jobj);
//		}
//		
//		try {
//			FileWriter file = new FileWriter("C:\\00.KOSMO78\\kosmo.json");
//			file.write(jsonCalendar.toString());
//			file.flush();
//			file.close();
//			System.out.println("저장 완료");
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		
		return "calendar/calendar";
	}
	
	// 캘린더 수정
	@RequestMapping(value="/calendarUpdate.bp", method=RequestMethod.GET)
	public String calendarUpdate(CalendarVO cvo, Model model) {
		logger.info("CalendarController calendarUpdate 진입 성공 >>> : ");
		
		int nCnt = calendarService.calendarUpdate(cvo);
		if(nCnt > 0 ) {
			
		}
		
		return "";
	}
	
	// 캘린더 입력
	@RequestMapping(value="/calendarInsert.bp", method=RequestMethod.GET)
	public String calendarInsert(CalendarVO cvo, Model model) {
		logger.info("CalendarController calendarInsert 진입 성공 >>> : ");
		
		int nCnt = calendarService.calendarInsert(cvo);
		
		return "";
	}
	
	// 캘린더 삭제
	@RequestMapping(value="/calendarDelete.bp", method=RequestMethod.GET)
	public String calendarDelete(CalendarVO cvo, Model model) {
		logger.info("CalendarController calendarDelete 진입 성공 >>> : ");
		
		int nCnt = calendarService.calendarDelete(cvo);
		
		return "";
	}
}
