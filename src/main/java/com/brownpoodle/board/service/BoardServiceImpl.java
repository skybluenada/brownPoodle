package com.brownpoodle.board.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.brownpoodle.board.controller.BoardController;
import com.brownpoodle.board.dao.BoardDAO;
import com.brownpoodle.board.vo.BoardVO;
import com.brownpoodle.member.vo.MemberVO;

@Service
@Transactional
public class BoardServiceImpl implements BoardService {
	
	private Logger logger = Logger.getLogger(BoardServiceImpl.class);

	// Service와 DAO 연결 
	private BoardDAO boardDAO;
	
	// 생성자에 DI
	@Autowired(required = false)
	public BoardServiceImpl(BoardDAO boardDAO) {
		this.boardDAO = boardDAO;
	}
	
	@Override
	public List<BoardVO> boardSelect(BoardVO bvo) {
		logger.info("BoardServiceImpl -> boardSelect 진입!");
		return boardDAO.boardSelect(bvo);
	}

	@Override
	public List<BoardVO> boardSelectAll(BoardVO bvo) {
		System.out.println("Service 진입");
		logger.info("serviceImpl진입!!!!!!!!!!!!!!!!!!!!!!!!!");
		return boardDAO.boardSelectAll(bvo);
	}

	@Override
	public int boardInsert(BoardVO bvo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int boardUpdate(BoardVO bvo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int boardDelete(BoardVO bvo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public BoardVO boardSelectLike(BoardVO bvo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int boardUpdateLike(BoardVO bvo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int likeInsert(BoardVO bvo, MemberVO mvo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int likeUpdate(BoardVO bvo, MemberVO mvo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
