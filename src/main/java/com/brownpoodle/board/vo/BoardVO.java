package com.brownpoodle.board.vo;

public class BoardVO {
	
	// ★★VO에서 정의한 모든 요소들은 SQL문에 같은 이름의 컬럼으로 사용해줘야 
	//     view페이지에 값을 불러올 수 있다.★★
	private String b_num;			// 게시글 번호
	private String b_subject;		// 게시글 제목
	private String b_name;			// 게시글 작성자
	private String b_content;		// 게시글 본문
	private String b_file;			// 게시글 사진
	private String b_hate;			// 누적 신고 수 
	private String b_like;			// 좋아요 수 
	private String b_deleteyn;		// 게시글 삭제여부
	private String b_insertdate;	// 게시글 작성일자
	private String b_updatedate;	// 게시글 수정일자 
	
	// 좋아요 관련 변수 추가 
	private String like_num;		// 좋아요 번호 : L0001
	private String m_num;			// 회원번호
	private String like_deleteyn;   // 좋아요 취소 여부

	// 생성자 
	public BoardVO() {
		
	}

	public BoardVO(String b_num, String b_subject, 
			       String b_name, String b_content, 
			       String b_file, String b_hate,
			       String b_like, String b_deleteyn, 
			       String b_insertdate, String b_updatedate) {
		this.b_num = b_num;
		this.b_subject = b_subject;
		this.b_name = b_name;
		this.b_content = b_content;
		this.b_file = b_file;
		this.b_hate = b_hate;
		this.b_like = b_like;
		this.b_deleteyn = b_deleteyn;
		this.b_insertdate = b_insertdate;
		this.b_updatedate = b_updatedate;
	}
	
	// 좋아요 변수 추가한 생성자 
	public BoardVO(String b_num, String b_subject, 
				   String b_name, String b_content, 
				   String b_file, String b_hate,
			       String b_like, String b_deleteyn, 
			       String b_insertdate, String b_updatedate, 
			       String like_num, String m_num,
			       String like_deleteyn) {
		this.b_num = b_num;
		this.b_subject = b_subject;
		this.b_name = b_name;
		this.b_content = b_content;
		this.b_file = b_file;
		this.b_hate = b_hate;
		this.b_like = b_like;
		this.b_deleteyn = b_deleteyn;
		this.b_insertdate = b_insertdate;
		this.b_updatedate = b_updatedate;
		this.like_num = like_num;
		this.m_num = m_num;
		this.like_deleteyn = like_deleteyn;
	}

	// getter, setter
	public String getB_num() {
		return b_num;
	}

	public String getB_subject() {
		return b_subject;
	}

	public String getB_name() {
		return b_name;
	}

	public String getB_content() {
		return b_content;
	}

	public String getB_file() {
		return b_file;
	}

	public String getB_hate() {
		return b_hate;
	}

	public String getB_like() {
		return b_like;
	}

	public String getB_deleteyn() {
		return b_deleteyn;
	}

	public String getB_insertdate() {
		return b_insertdate;
	}

	public String getB_updatedate() {
		return b_updatedate;
	}

	public void setB_num(String b_num) {
		this.b_num = b_num;
	}

	public void setB_subject(String b_subject) {
		this.b_subject = b_subject;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public void setB_content(String b_content) {
		this.b_content = b_content;
	}

	public void setB_file(String b_file) {
		this.b_file = b_file;
	}

	public void setB_hate(String b_hate) {
		this.b_hate = b_hate;
	}

	public void setB_like(String b_like) {
		this.b_like = b_like;
	}

	public void setB_deleteyn(String b_deleteyn) {
		this.b_deleteyn = b_deleteyn;
	}

	public void setB_insertdate(String b_insertdate) {
		this.b_insertdate = b_insertdate;
	}

	public void setB_updatedate(String b_updatedate) {
		this.b_updatedate = b_updatedate;
	}

	// 좋아요 getter/setter
	public String getLike_num() {
		return like_num;
	}

	public String getM_num() {
		return m_num;
	}

	public String getLike_deleteyn() {
		return like_deleteyn;
	}

	public void setLike_num(String like_num) {
		this.like_num = like_num;
	}

	public void setM_num(String m_num) {
		this.m_num = m_num;
	}

	public void setLike_deleteyn(String like_deleteyn) {
		this.like_deleteyn = like_deleteyn;
	}

}
