package com.newlight.app.vo;

public class QnAVO {
	private int qnaNumber;
	private String qnaTitle;
	private String qnaContent;
	private int qnaReadcount;
	private String qnaWriteday;
	private int memberNumber;
	private String memberNickname;
	
	public QnAVO() {
	}

	public int getQnaNumber() {
		return qnaNumber;
	}

	public void setQnaNumber(int qnaNumber) {
		this.qnaNumber = qnaNumber;
	}

	public String getQnaTitle() {
		return qnaTitle;
	}

	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	public String getQnaContent() {
		return qnaContent;
	}

	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}

	public int getQnaReadcount() {
		return qnaReadcount;
	}

	public void setQnaReadcount(int qnaReadcount) {
		this.qnaReadcount = qnaReadcount;
	}

	public String getQnaWriteday() {
		return qnaWriteday;
	}

	public void setQnaWriteday(String qnaWriteday) {
		this.qnaWriteday = qnaWriteday;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	@Override
	public String toString() {
		return "QnAVO [qnaNumber=" + qnaNumber + ", qnaTitle=" + qnaTitle + ", qnaContent=" + qnaContent
				+ ", qnaReadcount=" + qnaReadcount + ", qnaWriteday=" + qnaWriteday + ", memberNumber=" + memberNumber
				+ ", memberNickname=" + memberNickname + "]";
	}
	
	
	
}
