package com.newlight.app.dto;

//comment_number int unsigned auto_increment primary key,
//comment_content varchar(500),
//member_number int unsigned,
//qna_number int unsigned,
public class QnACommentDTO {
	private int commentNumber;
	private String commentContent;
	private int memberNumber;
	private String qna_comment_Writeday;
	private int qnaNumber;

	public QnACommentDTO() {
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

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	public String getQna_comment_Writeday() {
		return qna_comment_Writeday;
	}

	public void setQna_comment_Writeday(String qna_comment_Writeday) {
		this.qna_comment_Writeday = qna_comment_Writeday;
	}

	public int getQnaNumber() {
		return qnaNumber;
	}

	public void setQnaNumber(int qnaNumber) {
		this.qnaNumber = qnaNumber;
	}

	@Override
	public String toString() {
		return "QnACommentDTO [commentNumber=" + commentNumber + ", commentContent=" + commentContent
				+ ", memberNumber=" + memberNumber + ", qna_comment_Writeday=" + qna_comment_Writeday + ", qnaNumber="
				+ qnaNumber + "]";
	}

}
