package com.newlight.app.dto;
//comment_number int unsigned primary key auto_increment,
//comment_content varchar(500) not null,
//comment_date datetime default now(),
//community_number int unsigned not null,
//member_number int unsigned not null,
public class CommunityCommentDTO {
   private int commentNumber;
   private String commentContent;
   private String commentDate;
   private int communityNumber;
   private int memberNumber;
   
   public CommunityCommentDTO() {
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

@Override
public String toString() {
	return "CommunityCommentDTO [commentNumber=" + commentNumber + ", commentContent=" + commentContent
			+ ", commentDate=" + commentDate + ", communityNumber=" + communityNumber + ", memberNumber=" + memberNumber
			+ "]";
}
   
   
}
