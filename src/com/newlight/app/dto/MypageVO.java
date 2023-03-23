package com.newlight.app.dto;

public class MypageVO {
	private int memberNumber;
	private int followerNumber;
	private int followeeNumber;
	private int creationNumber;
	private String memberNickname;
	private String creationTitle;
	private String creationContent;
	
	public MypageVO() {
		// TODO Auto-generated constructor stub
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	public int getFollowerNumber() {
		return followerNumber;
	}

	public void setFollowerNumber(int followerNumber) {
		this.followerNumber = followerNumber;
	}

	public int getFolloweeNumber() {
		return followeeNumber;
	}

	public void setFolloweeNumber(int followeeNumber) {
		this.followeeNumber = followeeNumber;
	}

	public int getCreationNumber() {
		return creationNumber;
	}

	public void setCreationNumber(int creationNumber) {
		this.creationNumber = creationNumber;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
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

	@Override
	public String toString() {
		return "MypageVO [memberNumber=" + memberNumber + ", followerNumber=" + followerNumber + ", followeeNumber="
				+ followeeNumber + ", creationNumber=" + creationNumber + ", memberNickname=" + memberNickname
				+ ", creationTitle=" + creationTitle + ", creationContent=" + creationContent + "]";
	}
	
}
