package com.newlight.app.dto;

import java.util.List;

import com.newlight.app.dto.CreationsFileDTO;

public class CreationsVO {
	int creationNumber;
	String creationTitle;
	String creationContent;
	String creationCategory1;
	String creationCategory2;
	String creationWriteday;
	int memberNumber;
	List<CreationsFileDTO> files;
	
	public CreationsVO() {
		
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

	public String getCreationCategory1() {
		return creationCategory1;
	}

	public void setCreationCategory1(String creationCategory1) {
		this.creationCategory1 = creationCategory1;
	}

	public String getCreationCategory2() {
		return creationCategory2;
	}

	public void setCreationCategory2(String creationCategory2) {
		this.creationCategory2 = creationCategory2;
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

	public List<CreationsFileDTO> getFiles() {
		return files;
	}

	public void setFiles(List<CreationsFileDTO> files) {
		this.files = files;
	}

	@Override
	public String toString() {
		return "CreationsVO [creationNumber=" + creationNumber + ", creationTitle=" + creationTitle
				+ ", creationContent=" + creationContent + ", creationCategory1=" + creationCategory1
				+ ", creationCategory2=" + creationCategory2 + ", creationWriteday=" + creationWriteday
				+ ", memberNumber=" + memberNumber + ", files=" + files + "]";
	}
	
}