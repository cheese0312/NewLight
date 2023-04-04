package com.newlight.app.vo;

import java.util.List;

import com.newlight.app.dto.QnAFileDTO;

public class QnAVO {
	private int qnaNumber;
	private String qnaTitle;
	private String memberNickname;
	private String qnaContent;
	private String qnaWriteday;
	private int qnaReadCount;
	List<QnAFileDTO> files;

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

	public String getQnaContent() {
		return qnaContent;
	}

	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
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

	public List<QnAFileDTO> getFiles() {
		return files;
	}

	public void setFiles(List<QnAFileDTO> files) {
		this.files = files;
	}

	@Override
	public String toString() {
		return "QnAVO [qnaNumber=" + qnaNumber + ", qnaTitle=" + qnaTitle + ", memberNickname=" + memberNickname
				+ ", qnaContent=" + qnaContent + ", qnaWriteday=" + qnaWriteday + ", qnaReadCount=" + qnaReadCount
				+ ", files=" + files + "]";
	}

}
