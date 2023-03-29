package com.newlight.app.dto;

public class MemberFileVO {
	private int memberNumber;
	private String memberNickname;
	private String memberPfpFile;
	
	public MemberFileVO() {
		// TODO Auto-generated constructor stub
	}
	
	public int getMemberNumber() {
		return memberNumber;
	}
	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}
	public String getMemberNickname() {
		return memberNickname;
	}
	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}
	public String getMemberPfpFile() {
		return memberPfpFile;
	}
	public void setMemberPfpFile(String memberPfpFile) {
		this.memberPfpFile = memberPfpFile;
	}
	
	@Override
	public String toString() {
		return "MemberFileVO [memberNumber=" + memberNumber + ", memberNickname=" + memberNickname + ", memberPfpFile="
				+ memberPfpFile + "]";
	}
	
}
