package com.brownpoodle.board.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brownpoodle.board.service.BoardService;
import com.brownpoodle.board.vo.BoardVO;
import com.brownpoodle.chabun.service.ChabunService;
import com.brownpoodle.common.CommonUtil;
import com.brownpoodle.member.vo.MemberVO;

@Controller
public class BoardController {

	private Logger logger = Logger.getLogger(BoardController.class);
	
	// Controller와 Service 연결
	private BoardService boardService;
//	private ChabunService chabunService;
	
	// 생성자에 DI
	@Autowired(required = false)
	public BoardController(BoardService boardService) {
		this.boardService = boardService;
//		this.chabunService = chabunService;
	}
	
	// 게시글 전체 조회 + 검색 + 페이징
	@RequestMapping(value = "boardSelectAll", method = RequestMethod.GET)
	public String boardSelectAll(@RequestParam(value = "curPage", defaultValue = "1") String curPage, 
								BoardVO bvo, Model model) {
		logger.info("[BoardController -> boardSelectAll 진입!]");
		
		// 검색 조건
		logger.info("* 넘어온 getKeyfilter : " + bvo.getKeyfilter());
		logger.info("* 넘어온 getKeyword : " + bvo.getKeyword());
		logger.info("* 넘어온 getStartdate : " + bvo.getStartdate());
		logger.info("* 넘어온 getEnddate : " + bvo.getEnddate());
		
		logger.info("* 현재 페이지 : " + bvo.getCurpage());
		
		// 가장 마지막 페이지: 전체 게시글 수 / 페이지 사이즈 반올림 
		
		// paging 관련 변수 선언 및 초기화
		String pagesize = CommonUtil.B_PAGE_SIZE;		// 한 페이지당 보여줄 게시글 수
		String curpage = CommonUtil.B_CUR_PAGE;			// 현재 페이지
		String totalcount = CommonUtil.B_TOTAL_COUNT;	// 전체 게시글 수
	
		// jsp와 데이터 주고받으면서 현재 페이지가 달라졌다면 값 갱신해줌
		logger.info(" * 넘어온 curPage : " + curPage);
		if (curPage != null) curpage = curPage;
		
		bvo.setPagesize(pagesize);
		bvo.setCurpage(curpage);
		bvo.setTotalcount(totalcount);
		
		logger.info("*** 초기화한 getPagesize : " + bvo.getPagesize());
		logger.info("*** 초기화한 getCurpage : " + bvo.getCurpage());
		logger.info("*** 초기화한 getTotalcount : " + bvo.getTotalcount());
		
		List<BoardVO> listAll = boardService.boardSelectAll(bvo);
		
		model.addAttribute("listAll", listAll);
		model.addAttribute("search", bvo);
		
		return "board/boardSelectAll";
	}
	
	// 게시판 전체 조회 + 페이징 (json 으로 response - pom.xml 에 의존성 추가 필요)
		@RequestMapping(value = "boardSelectPaging", method = RequestMethod.GET)
		public @ResponseBody List<BoardVO> infiniteScroll(@RequestParam(value = "curPage", defaultValue = "1") String curPage,
														@RequestParam(value = "keyfilter", defaultValue = "") String kfilter,
														@RequestParam(value = "keyword", defaultValue = "") String kword,
														@RequestParam(value = "startdate", defaultValue = "") String sdate,
														@RequestParam(value = "enddate", defaultValue = "") String edate,
														BoardVO bvo) {
		logger.info("[BoardController -> infiniteScroll 진입!]");
		
		// jsp와 데이터 주고받으면서 현재 페이지가 달라졌다면 값 갱신해줌
		logger.info(" * 넘어온 curPage : " + curPage);
		String curpage = CommonUtil.B_CUR_PAGE;
		if (curPage != null) curpage = curPage;
		
		bvo.setPagesize(CommonUtil.B_PAGE_SIZE);
		bvo.setCurpage(curpage);
		
		logger.info(" * 넘어온 kfilter : " + kfilter);
		logger.info(" * 넘어온 kword : " + kword);
		logger.info(" * 넘어온 sdate : " + sdate);
		logger.info(" * 넘어온 edate : " + edate);
		
		bvo.setKeyfilter(kfilter);
		bvo.setKeyword(kword);
		bvo.setStartdate(sdate);
		bvo.setEnddate(edate);		
		
		return boardService.boardSelectAll(bvo);
	}
	
	// 게시글 상세 조회 
	// session 처리 필요
	@RequestMapping(value = "boardSelect", method = RequestMethod.GET)
	public String boardSelect(BoardVO bvo, Model model, HttpSession session) {
		logger.info("[BoardController -> boardSelect 진입!]");
		
		logger.info(" * 상세 조회할 게시글 번호:" + bvo.getB_num());
		
		List<BoardVO> listS = boardService.boardSelect(bvo);
		model.addAttribute("listS", listS);
		
		// 임시로 회원 로그인 상태 정보 넘기기
		MemberVO mvo = new MemberVO();
		mvo.setM_id("user01");
		mvo.setM_nick("hong홍");
		mvo.setM_photo("PS21011600311.jpg");
		
		session.setAttribute("ss", mvo);
		
		return "board/boardSelect";
	}
	
	
	
	
	
}
