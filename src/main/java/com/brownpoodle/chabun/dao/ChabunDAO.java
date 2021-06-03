package com.brownpoodle.chabun.dao;

import com.brownpoodle.board.vo.BoardVO;
import com.brownpoodle.rboard.vo.RboardVO;

public interface ChabunDAO {

	// 필요한 채번 클래스 생성 
	public BoardVO getBoardChabun();
	public RboardVO getRboardChabun();
}
