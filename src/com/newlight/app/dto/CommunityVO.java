package com.newlight.app.dto;

public class CommunityVO {
	
	private String memberNickName;
	private int communityNumber;
	private String communityTitle;
	private String communityContent;
	private int communityReadNum;
	private String communityWriteDay;
	private String communityStatus;
	private int memberNumber;
	
	public CommunityVO() {}
	
	

	public String getMemberNickName() {
		return memberNickName;
	}



	public void setMemberNickName(String memberNickName) {
		this.memberNickName = memberNickName;
	}



	public int getCommunityReadNum() {
		return communityReadNum;
	}



	public void setCommunityReadNum(int communityReadNum) {
		this.communityReadNum = communityReadNum;
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

	public int getCommunityReadnum() {
		return communityReadNum;
	}

	public void setCommunityReadnum(int communityReadnum) {
		this.communityReadNum = communityReadnum;
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

	@Override
	public String toString() {
		return "CommunityVO [memberNickName=" + memberNickName + ", communityNumber=" + communityNumber
				+ ", communityTitle=" + communityTitle + ", communityContent=" + communityContent
				+ ", communityReadNum=" + communityReadNum + ", communityWriteDay=" + communityWriteDay
				+ ", communityStatus=" + communityStatus + ", memberNumber=" + memberNumber + "]";
	}
}
