package com.newlight.app.dto;

//follower_number int unsigned,
//followee_number int unsigned,
//constraint fk_follows_er foreign key(follower_number) references `member`(member_number),
//constraint fk_follows_ee foreign key(followee_number) references `member`(member_number),
//constraint pk_follows primary key(follower_number,followee_number)

public class FollowsDTO {

	private int followerNumber;
	private int followeeNumber;
	
	public FollowsDTO() {
		
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

	@Override
	public String toString() {
		return "FollowsDTO [followerNumber=" + followerNumber + ", followeeNumber=" + followeeNumber + "]";
	}
	
}
