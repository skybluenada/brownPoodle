package com.brownpoodle.board.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.brownpoodle.board.vo.BoardVO;
import com.brownpoodle.member.vo.MemberVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	private Logger logger = Logger.getLogger(BoardDAOImpl.class);
	
	@Autowired(required = false)
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 게시글 상세 조회 
	@Override
	public List<BoardVO> boardSelect(BoardVO bvo) {
		logger.info("BoardDAOImpl -> boardSelect 진입!");
		return sqlSessionTemplate.selectList("boardSelect", bvo);
	}

	// 게시글 전체 조회 + 검색 + paging
	@Override
	public List<BoardVO> boardSelectAll(BoardVO bvo) {
		System.out.println("BoardDAOImpl 진입!");
		logger.info("BoardDAOImpl boardSelectAll >>> : ");
		//logger.debug("message >>> : " + sqlSessionTemplate.selectList("boardSelectAll", bvo));
		
		return sqlSessionTemplate.selectList("boardSelectAll", bvo);
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

	// 좋아요 수 출력 
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
