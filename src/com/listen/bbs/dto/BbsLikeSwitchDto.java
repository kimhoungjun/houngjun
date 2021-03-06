package com.listen.bbs.dto;

public class BbsLikeSwitchDto {
	
	/* 
	 * 게시글 공감버튼 눌렀을 때 
	 * BBS TABLE GOODCOUNT 컬럼
	 * 업데이트 해주기 위한 DTO 클래스
	 */
	
	private String bbs_seq;
	private String likeSw;
	private String likeValue;

	public String getLikeValue() {
		return likeValue;
	}

	public void setLikeValue(String likeValue) {
		this.likeValue = likeValue;
	}

	public String getBbs_seq() {
		return bbs_seq;
	}

	public void setBbs_seq(String bbs_seq) {
		this.bbs_seq = bbs_seq;
	}

	public String getLikeSw() {
		return likeSw;
	}

	public void setLikeSw(String likeSw) {
		this.likeSw = likeSw;
	}

}
