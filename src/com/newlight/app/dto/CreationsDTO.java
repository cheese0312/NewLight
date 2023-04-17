package com.newlight.app.dto;

//creation_number int unsigned primary key,
//creation_title varchar(1000)not null,
//creation_content varchar(1000)not null,
//creation_category1 varchar(1000)not null,
//creation_category2 varchar(1000)not null,
//creation_writeday datetime default now(),
//member_number int unsigned not null,
//constraint fk_creation foreign key(member_number)
//references member(member_number)

public class CreationsDTO {
	
	private int creationNumber;
	private String creationTitle;
	private String creationContent;
	private String creationCode;
	private String creationName;
	private String creationWritedate;
	private int memberNumber;
	private String creationSumnail;
	
	public CreationsDTO() {
		
	}

	public int getCreationNumber() {
		return creationNumber;
	}

	public void setCreationNumber(int creationNumber) {
		this.creationNumber = creationNumber;
	}

	public String getCreationTitle() {
		return creationTitle;
	}

	public void setCreationTitle(String creationTitle) {
		this.creationTitle = creationTitle;
	}

	public String getCreationContent() {
		return creationContent;
	}

	public void setCreationContent(String creationContent) {
		this.creationContent = creationContent;
	}

	public String getCreationCode() {
		return creationCode;
	}

	public void setCreationCode(String creationCode) {
		this.creationCode = creationCode;
	}

	public String getCreationName() {
		return creationName;
	}

	public void setCreationName(String creationName) {
		this.creationName = creationName;
	}

	public String getCreationWritedate() {
		return creationWritedate;
	}

	public void setCreationWritedate(String creationWritedate) {
		this.creationWritedate = creationWritedate;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}
	
	

	public String getCreationSumnail() {
		return creationSumnail;
	}

	public void setCreationSumnail(String creationSumnail) {
		this.creationSumnail = creationSumnail;
	}

	@Override
	public String toString() {
		return "CreationsDTO [creationNumber=" + creationNumber + ", creationTitle=" + creationTitle
				+ ", creationContent=" + creationContent + ", creationCode=" + creationCode + ", creationName="
				+ creationName + ", creationWritedate=" + creationWritedate + ", memberNumber=" + memberNumber
				+ ", creationSumnail=" + creationSumnail + "]";
	}
}
