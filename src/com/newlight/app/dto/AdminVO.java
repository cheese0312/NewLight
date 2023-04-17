package com.newlight.app.dto;

public class AdminVO {
	private int memberNumber;
	private int creationNumber;
	private String memberName;
	private String creationCount;
	private String memberStatus;
	
	public AdminVO() {
		// TODO Auto-generated constructor stub
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	public int getCreationNumber() {
		return creationNumber;
	}

	public void setCreationNumber(int creationNumber) {
		this.creationNumber = creationNumber;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getCreationCount() {
		return creationCount;
	}

	public void setCreationCount(String creationCount) {
		this.creationCount = creationCount;
	}

	public String getMemberStatus() {
		return memberStatus;
	}

	public void setMemberStatus(String memberStatus) {
		this.memberStatus = memberStatus;
	}

	@Override
	public String toString() {
		return "AdminVO [memberNumber=" + memberNumber + ", creationNumber=" + creationNumber + ", memberName="
				+ memberName + ", creationCount=" + creationCount + ", memberStatus=" + memberStatus + "]";
	}


}
