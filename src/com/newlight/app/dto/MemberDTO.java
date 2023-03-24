package com.newlight.app.dto;

//member_number int unsigned auto_increment primary key,
//member_name varchar(500) not null,
//member_id varchar(1000) not null,
//member_password varchar(1000) not null,
//member_nickname varchar(1000) not null,
//member_website varchar(1000) not null,
//member_pfp varchar(3000)not null,
//member_email varchar(1000) not null,
//member_birth varchar(1000)not null,
//member_address1 varchar(1000) not null,
//member_address2 varchar(1000) not null,
//member_status char(1)

public class MemberDTO {
	int memberNumber;
	private String memberName;
	private String memberId;
	private String memberPassword;
	private String memberNickname;
	private String memberWebsite;
	private String memberPfp;
	private String memberEmail;
	private String memberBrith;
	private String memberAddress1;
	private String memberAddress2;
	private String memberStatus;
	
	public MemberDTO() {
		
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPassword() {
		return memberPassword;
	}

	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
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

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberBrith() {
		return memberBrith;
	}

	public void setMemberBrith(String memberBrith) {
		this.memberBrith = memberBrith;
	}

	public String getMemberAddress1() {
		return memberAddress1;
	}

	public void setMemberAddress1(String memberAddress1) {
		this.memberAddress1 = memberAddress1;
	}

	public String getMemberAddress2() {
		return memberAddress2;
	}

	public void setMemberAddress2(String memberAddress2) {
		this.memberAddress2 = memberAddress2;
	}

	public String getMemberStatus() {
		return memberStatus;
	}

	public void setMemberStatus(String memberStatus) {
		this.memberStatus = memberStatus;
	}

	@Override
	public String toString() {
		return "MemberDTO [memberNumber=" + memberNumber + ", memberName=" + memberName + ", memberId=" + memberId
				+ ", memberPassword=" + memberPassword + ", memberNickname=" + memberNickname + ", memberWebsite="
				+ memberWebsite + ", memberPfp=" + memberPfp + ", memberEmail=" + memberEmail + ", memberBrith="
				+ memberBrith + ", memberAddress1=" + memberAddress1 + ", memberAddress2=" + memberAddress2
				+ ", memberStatus=" + memberStatus + "]";
	}
	
}







