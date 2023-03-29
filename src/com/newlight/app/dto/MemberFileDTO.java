package com.newlight.app.dto;

public class MemberFileDTO {
	private String memberPfpFile;
	
	public MemberFileDTO() {
		// TODO Auto-generated constructor stub
	}

	public String getMemberPfpFile() {
		return memberPfpFile;
	}

	public void setMemberPfpFile(String memberPfpFile) {
		this.memberPfpFile = memberPfpFile;
	}

	@Override
	public String toString() {
		return "MemberFileDTO [memberPfpFile=" + memberPfpFile + "]";
	}
	
}
