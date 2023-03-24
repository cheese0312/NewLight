package com.newlight.app.dto;

//creation_number int unsigned,
//member_number int unsigned,
//constraint  foreign key(creation_number) references creations(creation_number),
//constraint  foreign key(member_number) references `member`(member_number),
//constraint pk_likes primary key(creation_number,member_number)

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
