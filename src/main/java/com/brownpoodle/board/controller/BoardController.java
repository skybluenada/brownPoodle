package com.brownpoodle.board.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.brownpoodle.board.service.BoardService;
import com.brownpoodle.board.vo.BoardVO;
import com.brownpoodle.chabun.service.ChabunService;
import com.brownpoodle.common.ChaebunUtils;
import com.brownpoodle.common.FileUploadUtil;


@Controller
public class BoardController {
	Logger logger = Logger.getLogger(BoardController.class);
	
	// 컨트롤러에서 서비스 연결
	private BoardService boardService;
	private ChabunService chabunService;
	
	// 생성자에 @Autowired 어노테이션으로 DI (의존성 주입하기)
	@Autowired(required = false)
	public BoardController(BoardService boardService,
						   ChabunService chabunService) {
		this.boardService = boardService;
		this.chabunService = chabunService;
	}
	
	// ●게시판 글 입력 폼
	@RequestMapping(value = "boardInsertForm", method=RequestMethod.GET)
	public String boardInsertForm() {
		return "board/boardInsertForm";
	}
	
	// ●게시판 전체보기
	
	// ●게시판 상세보기
	
	// ●게시판 글쓰기 
	@RequestMapping(value = "boardInsert", method=RequestMethod.POST)
	public String boardInsert(MultipartHttpServletRequest request) { // MultipartHttpServletRequest -> HttpServletRequest
		logger.info("BoardController boardInsert 함수 진입 >>> : ");
		
		// 채번 구하기
		String b_num = ChaebunUtils.getBoardChaebun(chabunService.getBoardChabun().getB_num());
		logger.info("BoardController boardInsert b_num >>> : " + b_num);
		
		// 이미지 업로드 
		FileUploadUtil fu = new FileUploadUtil();
		// 이미지 파일 원본 사이즈 크기 조절 하기
		// boolean bool = fu.uploadFile(request, "boardimg"); // request -> mpRequest
		// logger.info("BoardController boardInsert bool >>> : " + bool);
	
		// 수정 !!!
		String file_name = fu.uploadFile(request, "boardimg");
		if (file_name != null) { 
			
			// 채번, 이미지 업로드 성공하면 VO 세팅하기
			BoardVO _bvo = null;
			_bvo = new BoardVO();
			
			// ===================수정!!!=========================
			_bvo.setB_num(b_num);
			_bvo.setB_subject(request.getParameter("b_subject"));
			_bvo.setB_name(request.getParameter("b_name"));
			_bvo.setB_content(request.getParameter("b_content"));
			_bvo.setB_file(file_name);
			// ===================수정=========================
			
			logger.info("BoardController boardInsert _bvo.getB_num() >>> : " + _bvo.getB_num());
			logger.info("BoardController boardInsert _bvo.getB_name() >>> : " + _bvo.getB_name());
			logger.info("BoardController boardInsert _bvo.getB_file() >>> : " + _bvo.getB_file());
			
			int nCnt = boardService.boardInsert(_bvo);
			logger.info("BoardController boardInsert nCnt >>> : " + nCnt);
			
			if (nCnt > 0) {
				return "board/boardInsert";
			}
		} else {
			System.out.println("BoardController boardInsert file_name >>> " + file_name);
		} // end of out if
		return "board/boardInertForm";
		
	}
	
	// ●게시판 글수정 페이지로 이동
	
	
	// ●게시판 글수정
	@RequestMapping(value = "boardUpdate", method = RequestMethod.POST)
	public String boardUpdate(BoardVO bvo, Model model) {
		logger.info("BoardController boardUpdate 함수 진입 >>> : ");
		
		logger.info("BoardController boardUpdate bvo.getB_num() >>> : " + bvo.getB_num());
		logger.info("BoardController boardUpdate bvo.getB_content() >>> :" + bvo.getB_content());
		
		int nCnt = boardService.boardUpdate(bvo);
		logger.info("BoardController boardUpdate nCnt >>> : " + nCnt);
		
		if(nCnt > 0) {
			return "board/boardUpdate";
		}
		
		return "board/boardSelectAll";
	}
	
	// ●게시판 글삭제  : ajax로 처리
	@RequestMapping(value = "boardDelete", method = RequestMethod.POST)
	@ResponseBody
	public String boardDelete(BoardVO bvo) {
		logger.info("BoardController boardDelete 함수진입 >>> : ");
		
		logger.info("BoardController boardDelete bvo.getB_num() >>> : " + bvo.getB_num());
		int nCnt = boardService.boardDelete(bvo);
		logger.info("BoardController boardDelete nCnt >>> : " + nCnt);
		
		String msg = "";
		if(nCnt > 0) {
			msg = "DELETE_OK";
		}else {
			msg = "DELETE_FAIL";
		}
		
		return msg;
	}
	
	// ============================Update, Delete 디버깅=================================
	// ●디버깅 페이지로 이동
		@RequestMapping(value = "boardDebugForm", method=RequestMethod.GET)
		public String boardDebugForm() {
			return "board/boardDebugForm";
		}
	// ================================================================================

    // ============================좋아요 Toy 프로젝트======================================
		// 좋아요 select 
		@SuppressWarnings("unused")
		@RequestMapping(value = "boardLikeSelect", method = RequestMethod.GET)
		public String boardLikeSelect(BoardVO bvo, Model model) {
			logger.info("BoardController boardLikeSelect 함수진입 >>> :");
			
			bvo.setB_num("B0003");// 글번호 임의로 세팅★★★
			bvo.setM_num("M0001");// 회원번호 임의로 세팅★★★ㄴ
			System.out.println("BoardController boardLikeSelect bvo.getB_num() >>> :" + bvo.getB_num());
			System.out.println("BoardController boardLikeSelect bvo.getM_num() >>> :" + bvo.getM_num());
			
			List<BoardVO> likeSelect = boardService.boardLikeSelect(bvo);
			
			if(likeSelect.size()==1) {
				model.addAttribute("likeSelect", likeSelect);
				List<BoardVO> likeCheck = boardService.boardLikeCheck(bvo);
				System.out.println("BoardController boardLikeSelect likeCheck >>> : " + likeCheck);
				System.out.println("BoardController boardLikeSelect likeCheck.size() >>> : " + likeCheck.size());
				
				if(likeCheck.size() == 0) {
					model.addAttribute("likeCheck", 0);
				}else {
					model.addAttribute("likeCheck", 1);
				}
				return "board/boardDebugForm";
			}
			
			return "board/boardInertForm";
		}
		
		// 좋아요 를 눌렀을 때 : ajax 통신 =======> 여기부터 !!!!!
		@RequestMapping(value = "boardLikeCheck", method = RequestMethod.POST)
		@ResponseBody
		public int boardLikeCheck(BoardVO bvo) {
			logger.info("BoardController boardLikeCheck 함수 진입 >>> :");
			
			int resultCheck = 1; // -> 1이면 ♥ / 0이면 ♡  /  -1이면 에러 
			
			// bvo.setB_num("B0003");// 글번호 임의로 세팅★★★ ?? view에서 받아오기 ?
			// bvo.setM_num("M0001");// 회원번호 임의로 세팅★★★ ?? view에서 받아오기 ?
			System.out.println("BoardController boardLikeSelect bvo.getB_num() >>> :" + bvo.getB_num());
			System.out.println("BoardController boardLikeSelect bvo.getM_num() >>> :" + bvo.getM_num());
			
			try {
				// 처음 좋아요 누른건지 체크
				List<BoardVO> listCheck = boardService.boardLikeCheck(bvo);
				if(listCheck.size() == 0) { // 처음 좋아요 누른 경우
					// 좋아요 테이블에 insert : 좋아요 채번!!! + 회원번호랑 게시글번호 임의지정해서 INSERT
					// String b_num = ChaebunUtils.getBoardChaebun(chabunService.getBoardChabun().getB_num());
					String lnum = ChaebunUtils.getBoardChaebun(chabunService.getLikeChabun().getLike_num());
					bvo.setLike_num(lnum);
					System.out.println("BoardController boardLikeSelect bvo.getLike_num() >>> : " + bvo.getLike_num());
					
					boardService.boardLikeInsert(bvo);
					
					// BOARD 테이블의 B_LIKE +1 업데이트 : boardLikePlus
					boardService.boardLikePlus(bvo);
					resultCheck = 1; // -> 1이면 ♥
					
				}else if(listCheck.get(0).getLike_deleteyn().equals("N")) { // 취소했다가 다시 눌렀을 경우 
					// 좋아요 테이블 업데이트 : boardLikeUpdate
					boardService.boardLikeUpdate(bvo);
					
					// BOARD 테이블의 B_LIKE +1 업데이트 : boardLikePlus
					boardService.boardLikePlus(bvo);
					resultCheck = 1; // -> 1이면 ♥
				
				}else { // 좋아요 취소 했을 경우
					// 좋아요 취소하면, 좋아요 테이블 업데이트 : boardLikeUpdate
					boardService.boardLikeUpdate(bvo);
					
					// BOARD 테이블의 B_LIKE -1업데이트 : boardLikeMinus
					boardService.boardLikeMinus(bvo);
					resultCheck = -1; // -> 1이면 ♡
				}
				
			}catch(Exception e) {
				logger.info("BoardController boardLikeCheck error >>> : " + e.getMessage());
				resultCheck = -1; // -> -1이면 error
			}
			
			return resultCheck; // 1:♥, 0:♡, -1:에러  
		}
			// int resultCheck = 1; -> 1이면 ♥ / 0이면 ♡
		
			// List<BoardVO> likeCheck = boardService.boardLikeCheck(bvo);
			// if (listCheck.size() == 0) 이면 처음 좋아요 누른 것 : 좋아요 테이블 INSERT : 좋아요 채번도 넣기 + 회원번호랑 게시글번호 임의지정
			// else if (받아온 값이 "N"이면) 취소했다가 다시 눌렀을 경우 처리
			// else 좋아요 취소 
		
			// resultCheck를 model "likeCheck" 안에 넣어서 return 
	// ================================================================================
}
