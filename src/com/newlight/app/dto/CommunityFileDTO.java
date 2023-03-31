package com.newlight.app.dto;

public class CommunityFileDTO {
	private String fileSystemName;
	private String fileOriginalName;
	private int communityNumber;
	
	public CommunityFileDTO() {
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

	public int getCommunityNumber() {
		return communityNumber;
	}

	public void setCommunityNumber(int communityNumber) {
		this.communityNumber = communityNumber;
	}

	@Override
	public String toString() {
		return "CommunityFileDTO [fileSystemName=" + fileSystemName + ", fileOriginalName=" + fileOriginalName
				+ ", communityNumber=" + communityNumber + "]";
	}
	
	
}
