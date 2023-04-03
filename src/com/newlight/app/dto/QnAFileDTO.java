package com.newlight.app.dto;

//file_original_name
//qna_number
public class QnAFileDTO {
	private String fileSystemName;
	private String fileOriginalName;
	private int qnaNumber;

	public QnAFileDTO() {
		// TODO Auto-generated constructor stub
	}

	public String getFileSystemName() {
		return fileSystemName;
	}

	public void setFileSystemName(String fileSystemName) {
		this.fileSystemName = fileSystemName;
	}

	public String getFileOriginalName() {
		return fileOriginalName;
	}

	public void setFileOriginalName(String fileOriginalName) {
		this.fileOriginalName = fileOriginalName;
	}

	public int getQnaNumber() {
		return qnaNumber;
	}

	public void setQnaNumber(int qnaNumber) {
		this.qnaNumber = qnaNumber;
	}

	@Override
	public String toString() {
		return "QnAFileDTO [fileSystemName=" + fileSystemName + ", fileOriginalName=" + fileOriginalName
				+ ", qnaNumber=" + qnaNumber + "]";
	}
	
	
	
}
