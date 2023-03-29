package com.newlight.app.dto;

//community_number int unsigned primary key,
//community_title varchar(1000) not null,
//community_content varchar(1000) not null,
//community_readnum int unsigned not null,
//community_writeday datetime default now(),
//community_status char(1) not null,
//member_number int unsigned not null,
//constraint fk_community foreign key(member_number)
//references member(member_number)

public class CommunityDTO {

	private int communityNumber;
	private String communityTitle;
	private String communityContent;
	private int communityReadCount;
	private String communityWriteday;
	private String communityStatus;
	private int memberNumber;
	
	public CommunityDTO() {
		
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

	public void setCommunityReadCount(int communityReadCount) {
		this.communityReadCount = communityReadCount;
	}

	public String getCommunityWriteday() {
		return communityWriteday;
	}

	public void setCommunityWriteday(String communityWriteday) {
		this.communityWriteday = communityWriteday;
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
		return "CommunityDTO [communityNumber=" + communityNumber + ", communityTitle=" + communityTitle
				+ ", communityContent=" + communityContent + ", communityReadCount=" + communityReadCount
				+ ", communityWriteday=" + communityWriteday + ", communityStatus=" + communityStatus
				+ ", memberNumber=" + memberNumber + "]";
	}
	
}
