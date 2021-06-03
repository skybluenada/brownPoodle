package com.brownpoodle.board.service;

import java.util.List;

import com.brownpoodle.board.vo.BoardVO;
import com.brownpoodle.member.vo.MemberVO;

public interface BoardService {

	public List<BoardVO> boardSelect(BoardVO bvo);
	public List<BoardVO> boardSelectAll(BoardVO bvo);
	public int boardInsert(BoardVO bvo);
	public int boardUpdate(BoardVO bvo);
	public int boardDelete(BoardVO bvo);
	
	// 좋아요 관련 메소드
	public BoardVO boardSelectLike(BoardVO bvo);
	public int boardUpdateLike(BoardVO bvo);
	public int likeInsert(BoardVO bvo, MemberVO mvo);
	public int likeUpdate(BoardVO bvo, MemberVO mvo);
}
