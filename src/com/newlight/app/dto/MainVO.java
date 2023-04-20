package com.newlight.app.dto;

import java.util.List;

public class MainVO {
	private int creationNumber;
	private String memberNickname;
	private String memberPfp;
	private String creationSumnail;
	private int memberNumber;
	private int commentNumber;
	private String creationTitle;
	private int commentCount;
	private int likeCount;
	private String categoryName;
	private String categoryCode;

	public MainVO() {

	}

	public int getCreationNumber() {
		return creationNumber;
	}

	public void setCreationNumber(int creationNumber) {
		this.creationNumber = creationNumber;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public String getMemberPfp() {
		return memberPfp;
	}

	public void setMemberPfp(String memberPfp) {
		this.memberPfp = memberPfp;
	}

	public String getCreationSumnail() {
		return creationSumnail;
	}

	public void setCreationSumnail(String creationSumnail) {
		this.creationSumnail = creationSumnail;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	public int getCommentNumber() {
		return commentNumber;
	}

	public void setCommentNumber(int commentNumber) {
		this.commentNumber = commentNumber;
	}

	public String getCreationTitle() {
		return creationTitle;
	}

	public void setCreationTitle(String creationTitle) {
		this.creationTitle = creationTitle;
	}

	public int getCommentCount() {
		return commentCount;
	}

	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}

	public int getLikeCount() {
		return likeCount;
	}

	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCategoryCode() {
		return categoryCode;
	}

	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}

	@Override
	public String toString() {
		return "MainVO [creationNumber=" + creationNumber + ", memberNickname=" + memberNickname + ", memberPfp="
				+ memberPfp + ", creationSumnail=" + creationSumnail + ", memberNumber=" + memberNumber
				+ ", commentNumber=" + commentNumber + ", creationTitle=" + creationTitle + ", commentCount="
				+ commentCount + ", likeCount=" + likeCount + ", categoryName=" + categoryName + ", categoryCode="
				+ categoryCode + "]";
	}

}
