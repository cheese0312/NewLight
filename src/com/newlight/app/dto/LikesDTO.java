package com.newlight.app.dto;

public class LikesDTO {
	private int creationNumber;
	private int memberNumber;
	
	public LikesDTO() {
		
	}

	public int getCreationNumber() {
		return creationNumber;
	}

	public void setCreationNumber(int creationNumber) {
		this.creationNumber = creationNumber;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	@Override
	public String toString() {
		return "LikesDTO [creationNumber=" + creationNumber + ", memberNumber=" + memberNumber + "]";
	}
	
}
