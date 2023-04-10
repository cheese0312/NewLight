package com.newlight.app.dto;

//comment_number int unsigned,
//comment_content varchar(500) not null,
//community_number int not null,
//member_number int unsigned not null,
//constraint fk_community_comment foreign key(member_number)
//references `member`(member_number)

public class CommunityCommentDTO {
	private int commentNumber;
	private String commentContent;
	private int communityNumber;
	private int memberNumber;
	
	public CommunityCommentDTO() {
		
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

	@Override
	public String toString() {
		return "CommunityCommentDTO [commentNumber=" + commentNumber + ", commentContent=" + commentContent
				+ ", communityNumber=" + communityNumber + ", memberNumber=" + memberNumber + "]";
	}
	
}
