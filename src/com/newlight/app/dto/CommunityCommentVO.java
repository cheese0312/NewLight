package com.newlight.app.dto;

public class CommunityCommentVO {
	   private int commentNumber;
	   private String commentContent;
	   private String commentDate;
	   private int communityNumber;
	   private int memberNumber;
	   private String memberNickName;
	   
	   public CommunityCommentVO() {
		// TODO Auto-generated constructor stub
	}

	public int getCommentNumber() {
		return commentNumber;
	}

	public void setCommentNumber(int commentNumber) {
		this.commentNumber = commentNumber;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public String getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}

	public int getCommunityNumber() {
		return communityNumber;
	}

	public void setCommunityNumber(int communityNumber) {
		this.communityNumber = communityNumber;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	

	public String getMemberNickName() {
		return memberNickName;
	}

	public void setMemberNickName(String memberNickName) {
		this.memberNickName = memberNickName;
	}

	@Override
	public String toString() {
		return "CommunityCommentVO [commentNumber=" + commentNumber + ", commentContent=" + commentContent
				+ ", commentDate=" + commentDate + ", communityNumber=" + communityNumber + ", memberNumber="
				+ memberNumber + ", memberNickName=" + memberNickName + "]";
	}
	   
	
}
