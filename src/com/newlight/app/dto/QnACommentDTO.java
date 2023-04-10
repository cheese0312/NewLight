package com.newlight.app.dto;
//comment_number int unsigned primary key,
//comment_content varchar(500) not null,
//member_number int unsigned,
//qna_number int unsigned,
//qna_writeday datetime default now(),
//constraint fk_qna_comment foreign key(member_number)
//references `member`(member_number),
//constraint fk_qna_comments foreign key(qna_number)
//references qna(qna_number)

public class QnACommentDTO {
	private int commentNumber;
	private String commentContent;
	private int memberNumber;
	private int qnaNumber;
	private String qnaCommnetWriteday;

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

	public int getQnaNumber() {
		return qnaNumber;
	}

	public void setQnaNumber(int qnaNumber) {
		this.qnaNumber = qnaNumber;
	}

	public String getQnaCommnetWriteday() {
		return qnaCommnetWriteday;
	}

	public void setQnaCommnetWriteday(String qnaCommnetWriteday) {
		this.qnaCommnetWriteday = qnaCommnetWriteday;
	}

	@Override
	public String toString() {
		return "QnACommentDTO [commentNumber=" + commentNumber + ", commentContent=" + commentContent
				+ ", memberNumber=" + memberNumber + ", qnaNumber=" + qnaNumber + ", qnaCommnetWriteday="
				+ qnaCommnetWriteday + "]";
	}
	
}
