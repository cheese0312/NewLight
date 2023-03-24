package com.newlight.app.dto;

//qna_number int unsigned primary key,
//qna_title varchar(1000) not null,
//qna_content varchar(500) not null,
//member_number int unsigned not null,
//constraint fk_qnt foreign key(member_number)
//references `member`(member_number)

public class QnADTO {
	
	private int qnaNumber;
	private String qnaTitle;
	private String qnaContent;
	private int memberNumber;
	
	public QnADTO() {
		
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

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	@Override
	public String toString() {
		return "QnADTO [qnaNumber=" + qnaNumber + ", qnaTitle=" + qnaTitle + ", qnaContent=" + qnaContent
				+ ", memberNumber=" + memberNumber + "]";
	}
	
}
