package com.newlight.app.dto;

//file_system_name varchar(500) primary key,
//file_original_name varchar(500) not null,
//creation_number int unsigned not null,
//constraint fk_creationfile foreign key(creation_number)
//references creations(creation_number)

public class CreationsFileDTO {
	private String fileSystemName;
	private String fileOriginalName;
	private int creationNumber;
	
	public CreationsFileDTO() {
		
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

	public int getCreationNumber() {
		return creationNumber;
	}

	public void setCreationNumber(int creationNumber) {
		this.creationNumber = creationNumber;
	}

	@Override
	public String toString() {
		return "CreationsFileDTO [fileSystemName=" + fileSystemName + ", fileOriginalName=" + fileOriginalName
				+ ", creationNumber=" + creationNumber + "]";
	}
	
}
