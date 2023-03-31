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
	
	int creationNumber;
	String creationTitle;
	String creationContent;
	String creationCode;
	String creationName;
	String creationWriteday;
	int memberNumber;
	
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

	public String getCreationWriteday() {
		return creationWriteday;
	}

	public void setCreationWriteday(String creationWriteday) {
		this.creationWriteday = creationWriteday;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	@Override
	public String toString() {
		return "CreationsDTO [creationNumber=" + creationNumber + ", creationTitle=" + creationTitle
				+ ", creationContent=" + creationContent + ", creationCode=" + creationCode + ", creationName="
				+ creationName + ", creationWriteday=" + creationWriteday + ", memberNumber=" + memberNumber + "]";
	}
}
