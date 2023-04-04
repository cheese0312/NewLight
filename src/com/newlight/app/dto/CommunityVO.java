package com.newlight.app.dto;

import java.util.List;

public class CommunityVO {
	
	private String memberNickName;
	private int communityNumber;
	private String communityTitle;
	private String communityContent;
	private int communityReadCount;
	private String communityWriteDay;
	private String communityStatus;
	private int memberNumber;
	private List<CommunityFileDTO> communityFiles;
	
	public CommunityVO() {}
	
	

	public String getMemberNickName() {
		return memberNickName;
	}



	public void setMemberNickName(String memberNickName) {
		this.memberNickName = memberNickName;
	}



	public int getCommunityReadNum() {
		return communityReadCount;
	}



	public void setCommunityReadCount(int communityReadCount) {
		this.communityReadCount = communityReadCount;
	}



	public String getCommunityWriteDay() {
		return communityWriteDay;
	}



	public void setCommunityWriteDay(String communityWriteDay) {
		this.communityWriteDay = communityWriteDay;
	}



	public int getCommunityNumber() {
		return communityNumber;
	}

	public void setCommunityNumber(int communityNumber) {
		this.communityNumber = communityNumber;
	}

	public String getCommunityTitle() {
		return communityTitle;
	}

	public void setCommunityTitle(String communityTitle) {
		this.communityTitle = communityTitle;
	}

	public String getCommunityContent() {
		return communityContent;
	}

	public void setCommunityContent(String communityContent) {
		this.communityContent = communityContent;
	}

	public int getCommunityReadCount() {
		return communityReadCount;
	}

	public void setCommunityReadnum(int communityReadCount) {
		this.communityReadCount = communityReadCount;
	}

	public String getCommunityWriteday() {
		return communityWriteDay;
	}

	public void setCommunityWriteday(String communityWriteday) {
		this.communityWriteDay = communityWriteday;
	}

	public String getCommunityStatus() {
		return communityStatus;
	}

	public void setCommunityStatus(String communityStatus) {
		this.communityStatus = communityStatus;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}
	

	public List<CommunityFileDTO> getCommunityFiles() {
		return communityFiles;
	}



	public void setCommunityFiles(List<CommunityFileDTO> communityFiles) {
		this.communityFiles = communityFiles;
	}



	@Override
	public String toString() {
		return "CommunityVO [memberNickName=" + memberNickName + ", communityNumber=" + communityNumber
				+ ", communityTitle=" + communityTitle + ", communityContent=" + communityContent
				+ ", communityReadCount=" + communityReadCount + ", communityWriteDay=" + communityWriteDay
				+ ", communityStatus=" + communityStatus + ", memberNumber=" + memberNumber + ", communityFiles="
				+ communityFiles + "]";
	}



	


	
}
