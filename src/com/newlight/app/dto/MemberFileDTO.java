package com.newlight.app.dto;

//file_system_name varchar(500) primary key,
//file_original_name varchar(500) not null,
//member_number int unsigned not null,

public class MemberFileDTO {
	private String fileSystemName;
	private String fileOriginalName;
	private int memberNumber;
	
	public MemberFileDTO() {
		
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

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	@Override
	public String toString() {
		return "MemberFileDTO [fileSystemName=" + fileSystemName + ", fileOriginalName=" + fileOriginalName
				+ ", memberNumber=" + memberNumber + "]";
	}
	
}
