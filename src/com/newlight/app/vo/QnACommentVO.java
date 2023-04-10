package com.newlight.app.vo;

public class QnACommentVO {
	private int commentNumber;
	private String commentContent;
	private int memberNumber;
	private String qnaCommentWriteday;
	private int qnaNumber;
	private String memberId;

	public QnACommentVO() {
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

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	public int getQnaNumber() {
		return qnaNumber;
	}

	public void setQnaNumber(int qnaNumber) {
		this.qnaNumber = qnaNumber;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getQnaCommentWriteday() {
		return qnaCommentWriteday;
	}

	public void setQnaCommentWriteday(String qnaCommentWriteday) {
		this.qnaCommentWriteday = qnaCommentWriteday;
	}

	@Override
	public String toString() {
		return "QnACommentVO [commentNumber=" + commentNumber + ", commentContent=" + commentContent + ", memberNumber="
				+ memberNumber + ", qnaCommentWriteday=" + qnaCommentWriteday + ", qnaNumber=" + qnaNumber
				+ ", memberId=" + memberId + "]";
	}

}
