package com.brownpoodle.walk.dao;

import java.util.List;

import com.brownpoodle.walk.vo.WalkVO;

public interface WalkDAO {
	
	// walkData ์๋ ฅ
	public int walkDataInsert(WalkVO wvo);
	
	// walkData ์กฐํ
	public List<String> walkSelectAll(WalkVO wvo);
	public List<WalkVO> walkSelect(WalkVO wvo);

}
