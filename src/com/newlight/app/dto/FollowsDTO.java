package com.newlight.app.dto;

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
