package com.java.member.dto;

public class MemberDto {
	private int member_Num;
	private String member_Id;
	private String member_Pwd;
	private String member_Name;
	private String MEMBER_BIRTH;
	private String member_Telephone;
	private String member_Email;
	
	@Override
	public String toString() {
		return "MemberDto [member_Num=" + member_Num + ", member_Id=" + member_Id + ", member_Pwd=" + member_Pwd
				+ ", member_Name=" + member_Name + ", MEMBER_BIRTH=" + MEMBER_BIRTH + ", member_Telephone="
				+ member_Telephone + ", member_Email=" + member_Email + "]";
	}
	public int getMember_Num() {
		return member_Num;
	}
	public void setMember_Num(int member_Num) {
		this.member_Num = member_Num;
	}
	public String getMember_Id() {
		return member_Id;
	}
	public void setMember_Id(String member_Id) {
		this.member_Id = member_Id;
	}
	public String getMember_Pwd() {
		return member_Pwd;
	}
	public void setMember_Pwd(String member_Pwd) {
		this.member_Pwd = member_Pwd;
	}
	public String getMember_Name() {
		return member_Name;
	}
	public void setMember_Name(String member_Name) {
		this.member_Name = member_Name;
	}
	public String getMEMBER_BIRTH() {
		return MEMBER_BIRTH;
	}
	public void setMEMBER_BIRTH(String mEMBER_BIRTH) {
		MEMBER_BIRTH = mEMBER_BIRTH;
	}
	public String getMember_Telephone() {
		return member_Telephone;
	}
	public void setMember_Telephone(String member_Telephone) {
		this.member_Telephone = member_Telephone;
	}
	public String getMember_Email() {
		return member_Email;
	}
	public void setMember_Email(String member_Email) {
		this.member_Email = member_Email;
	}
	
	
}
