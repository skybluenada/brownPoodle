package com.brownpoodle.chabun.service;

import com.brownpoodle.board.vo.BoardVO;
import com.brownpoodle.rboard.vo.RboardVO;

public interface ChabunService {

	// 필요한 채번 클래스 생성 
		public BoardVO getBoardChabun();
		public RboardVO getRboardChabun();
}
