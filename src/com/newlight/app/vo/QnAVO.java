package com.newlight.app.vo;

public class QnAVO {
	private int qnaNumber;
	private String qnaTitle;
	private String memberNickname;
	private String qnaWriteday;
	private int qnaReadCount;
	
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

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public String getQnaWriteday() {
		return qnaWriteday;
	}

	public void setQnaWriteday(String qnaWriteday) {
		this.qnaWriteday = qnaWriteday;
	}

	public int getQnaReadCount() {
		return qnaReadCount;
	}

	public void setQnaReadCount(int qnaReadCount) {
		this.qnaReadCount = qnaReadCount;
	}

	@Override
	public String toString() {
		return "QnAVO [qnaNumber=" + qnaNumber + ", qnaTitle=" + qnaTitle + ", memberNickname=" + memberNickname
				+ ", qnaWriteday=" + qnaWriteday + ", qnaReadCount=" + qnaReadCount + "]";
	}

}
