package com.newlight.app.dto;

import java.util.List;

public class MypageVO {
	private int memberNumber;
	private int followerNumber;
	private int followeeNumber;
	private int creationNumber;
	private String memberNickname;
	private String memberComment;
	private String creationTitle;
	private String creationContent;
	private String creationSumnail;
	List<CreationsFileDTO> files;
	private String likeCount;
	private String commentCount;
	private String memberPassword;
	private String memberWebsite;
	private String memberPfp;
	private String memberPhonenumber;

	public MypageVO() {

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

	public String getMemberComment() {
		return memberComment;
	}

	public void setMemberComment(String memberComment) {
		this.memberComment = memberComment;
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

	public String getCreationSumnail() {
		return creationSumnail;
	}

	public void setCreationSumnail(String creationSumnail) {
		this.creationSumnail = creationSumnail;
	}

	public List<CreationsFileDTO> getFiles() {
		return files;
	}

	public void setFiles(List<CreationsFileDTO> files) {
		this.files = files;
	}

	public String getLikeCount() {
		return likeCount;
	}

	public void setLikeCount(String likeCount) {
		this.likeCount = likeCount;
	}

	public String getCommentCount() {
		return commentCount;
	}

	public void setCommentCount(String commentCount) {
		this.commentCount = commentCount;
	}

	public String getMemberPassword() {
		return memberPassword;
	}

	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}

	public String getMemberWebsite() {
		return memberWebsite;
	}

	public void setMemberWebsite(String memberWebsite) {
		this.memberWebsite = memberWebsite;
	}

	public String getMemberPfp() {
		return memberPfp;
	}

	public void setMemberPfp(String memberPfp) {
		this.memberPfp = memberPfp;
	}

	public String getMemberPhonenumber() {
		return memberPhonenumber;
	}

	public void setMemberPhonenumber(String memberPhonenumber) {
		this.memberPhonenumber = memberPhonenumber;
	}

	@Override
	public String toString() {
		return "MypageVO [memberNumber=" + memberNumber + ", followerNumber=" + followerNumber + ", followeeNumber="
				+ followeeNumber + ", creationNumber=" + creationNumber + ", memberNickname=" + memberNickname
				+ ", memberComment=" + memberComment + ", creationTitle=" + creationTitle + ", creationContent="
				+ creationContent + ", creationSumnail=" + creationSumnail + ", files=" + files + ", likeCount="
				+ likeCount + ", commentCount=" + commentCount + ", memberPassword=" + memberPassword
				+ ", memberWebsite=" + memberWebsite + ", memberPfp=" + memberPfp + ", memberPhonenumber="
				+ memberPhonenumber + "]";
	}

}
