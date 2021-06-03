package com.brownpoodle.board.dao;

import java.util.List;

import com.brownpoodle.board.vo.BoardVO;

public interface BoardDAO {
	
	public List<BoardVO> boardSelect(BoardVO bvo);		// 게시판 상세보기
	public List<BoardVO> boardSelectAll(BoardVO bvo);	// 게시판 전체보기
	public int boardInsert(BoardVO bvo);				// 게시판 글쓰기
	public int boardUpdate(BoardVO bvo);				// 게시판 글수정
	public int boardDelete(BoardVO bvo);				// 게시판 글삭제 
	
	//====================좋아요====================
	public List<BoardVO> boardLikeSelect(BoardVO bvo);  // 좋아요 수 출력 : selectAll과 합치기
	public List<BoardVO> boardLikeCheck(BoardVO bvo);   // 사용자가 해당 게시글에 좋아요를 눌렀는지 확인
	
	public int boardLikeInsert(BoardVO bvo);			// 처음으로 좋아요 눌렀을 때, 좋아요 테이블 인서트
	public int boardLikePlus(BoardVO bvo);				// BOARD 테이블의 B_LIKE +1 업데이트
	
	public int boardLikeUpdate(BoardVO bvo);			// 취소했다가 다시 좋아요 눌렀을 때, 좋아요 테이블 업데이트
														// 좋아요 취소하면, 좋아요 테이블 업데이트
	public int boardLikeMinus(BoardVO bvo);				// BOARD 테이블의 B_LIKE -1업데이트
	
	// 좋아요 수 증감 : 동적쿼리문 사용해보기
	// 좋아요 테이블 insert
	// 좋아요 테이블 update : 동적쿼리문 사용해보기

}
