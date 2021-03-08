package com.java.map.dto;

import java.util.Date;

public class MapDto {
	
	@Override
	public String toString() {
		return "MapDto [room_Num=" + room_Num + ", room_Type=" + room_Type + ", subRoom_Type=" + subRoom_Type
				+ ", room_RentType=" + room_RentType + ", room_Price=" + room_Price + ", room_Manageprice="
				+ room_Manageprice + ", room_Size=" + room_Size + ", room_Floor=" + room_Floor + ", room_Structure="
				+ room_Structure + ", room_Parking=" + room_Parking + ", room_Options=" + room_Options
				+ ", room_WriterName=" + room_WriterName + ", room_Telephone=" + room_Telephone + ", room_memberNum="
				+ room_memberNum + ", room_MapX=" + room_MapX + ", room_MapY=" + room_MapY + ", room_viewNum="
				+ room_viewNum + ", room_LikeNum=" + room_LikeNum + ", room_BadNum=" + room_BadNum + ", room_date="
				+ room_date + ", ROOM_ANIMAL=" + ROOM_ANIMAL + ", ROOM_BUILTIN=" + ROOM_BUILTIN + ", ROOM_ELEVATOR="
				+ ROOM_ELEVATOR + ", ROOM_BOILER=" + ROOM_BOILER + ", ROOM_VERANDA=" + ROOM_VERANDA + ", ROOM_MOVEIN="
				+ ROOM_MOVEIN + ", ROOM_SECURITY=" + ROOM_SECURITY + ", ROOM_AGENT=" + ROOM_AGENT + "]";
	}
	private int room_Num;
	private String room_Type;
	private String subRoom_Type;
	private String room_RentType;
	private String room_Price;
	private String room_Manageprice;
	private String room_Size;
	private String room_Floor;
	private String room_Structure;
	private String room_Parking;
	private String room_Options;
	private String room_WriterName;
	private String room_Telephone;
	private int room_memberNum;
	private String room_MapX;
	private String room_MapY;
	
	
	private int room_viewNum;
	private int room_LikeNum;
	private int room_BadNum;
	
	private Date room_date;
	
	private String ROOM_ANIMAL;
	private String ROOM_BUILTIN;
	private String ROOM_ELEVATOR;
	private String ROOM_BOILER;
	private String ROOM_VERANDA;
	private String ROOM_MOVEIN;
	private String ROOM_SECURITY;
	private String ROOM_AGENT;
	private String ROOM_REPORTUSER;
	
	
	public String getROOM_REPORTUSER() {
		return ROOM_REPORTUSER;
	}
	public void setROOM_REPORTUSER(String rOOM_REPORTUSER) {
		ROOM_REPORTUSER = rOOM_REPORTUSER;
	}
	public String getSubRoom_Type() {
		return subRoom_Type;
	}
	public void setSubRoom_Type(String subRoom_Type) {
		this.subRoom_Type = subRoom_Type;
	}
	public int getRoom_Num() {
		return room_Num;
	}
	public void setRoom_Num(int room_Num) {
		this.room_Num = room_Num;
	}
	public String getRoom_Type() {
		return room_Type;
	}
	public void setRoom_Type(String room_Type) {
		this.room_Type = room_Type;
	}
	public String getRoom_RentType() {
		return room_RentType;
	}
	public void setRoom_RentType(String room_RentType) {
		this.room_RentType = room_RentType;
	}
	public String getRoom_Price() {
		return room_Price;
	}
	public void setRoom_Price(String room_Price) {
		this.room_Price = room_Price;
	}
	public String getRoom_Manageprice() {
		return room_Manageprice;
	}
	public void setRoom_Manageprice(String room_Manageprice) {
		this.room_Manageprice = room_Manageprice;
	}
	public String getRoom_Size() {
		return room_Size;
	}
	public void setRoom_Size(String room_Size) {
		this.room_Size = room_Size;
	}
	public String getRoom_Floor() {
		return room_Floor;
	}
	public void setRoom_Floor(String room_Floor) {
		this.room_Floor = room_Floor;
	}
	public String getRoom_Structure() {
		return room_Structure;
	}
	public void setRoom_Structure(String room_Structure) {
		this.room_Structure = room_Structure;
	}
	public String getRoom_Parking() {
		return room_Parking;
	}
	public void setRoom_Parking(String room_Parking) {
		this.room_Parking = room_Parking;
	}
	public String getRoom_Options() {
		return room_Options;
	}
	public void setRoom_Options(String room_Options) {
		this.room_Options = room_Options;
	}
	public String getRoom_WriterName() {
		return room_WriterName;
	}
	public void setRoom_WriterName(String room_WriterName) {
		this.room_WriterName = room_WriterName;
	}
	public String getRoom_Telephone() {
		return room_Telephone;
	}
	public void setRoom_Telephone(String room_Telephone) {
		this.room_Telephone = room_Telephone;
	}
	public int getRoom_memberNum() {
		return room_memberNum;
	}
	public void setRoom_memberNum(int room_memberNum) {
		this.room_memberNum = room_memberNum;
	}
	public String getRoom_MapX() {
		return room_MapX;
	}
	public void setRoom_MapX(String room_MapX) {
		this.room_MapX = room_MapX;
	}
	public String getRoom_MapY() {
		return room_MapY;
	}
	public void setRoom_MapY(String room_MapY) {
		this.room_MapY = room_MapY;
	}
	public int getRoom_viewNum() {
		return room_viewNum;
	}
	public void setRoom_viewNum(int room_viewNum) {
		this.room_viewNum = room_viewNum;
	}
	public int getRoom_LikeNum() {
		return room_LikeNum;
	}
	public void setRoom_LikeNum(int room_LikeNum) {
		this.room_LikeNum = room_LikeNum;
	}
	public int getRoom_BadNum() {
		return room_BadNum;
	}
	public void setRoom_BadNum(int room_BadNum) {
		this.room_BadNum = room_BadNum;
	}
	public Date getRoom_date() {
		return room_date;
	}
	public void setRoom_date(Date room_date) {
		this.room_date = room_date;
	}
	public String getROOM_ANIMAL() {
		return ROOM_ANIMAL;
	}
	public void setROOM_ANIMAL(String rOOM_ANIMAL) {
		ROOM_ANIMAL = rOOM_ANIMAL;
	}
	public String getROOM_BUILTIN() {
		return ROOM_BUILTIN;
	}
	public void setROOM_BUILTIN(String rOOM_BUILTIN) {
		ROOM_BUILTIN = rOOM_BUILTIN;
	}
	public String getROOM_ELEVATOR() {
		return ROOM_ELEVATOR;
	}
	public void setROOM_ELEVATOR(String rOOM_ELEVATOR) {
		ROOM_ELEVATOR = rOOM_ELEVATOR;
	}
	public String getROOM_BOILER() {
		return ROOM_BOILER;
	}
	public void setROOM_BOILER(String rOOM_BOILER) {
		ROOM_BOILER = rOOM_BOILER;
	}
	public String getROOM_VERANDA() {
		return ROOM_VERANDA;
	}
	public void setROOM_VERANDA(String rOOM_VERANDA) {
		ROOM_VERANDA = rOOM_VERANDA;
	}
	public String getROOM_MOVEIN() {
		return ROOM_MOVEIN;
	}
	public void setROOM_MOVEIN(String rOOM_MOVEIN) {
		ROOM_MOVEIN = rOOM_MOVEIN;
	}
	public String getROOM_SECURITY() {
		return ROOM_SECURITY;
	}
	public void setROOM_SECURITY(String rOOM_SECURITY) {
		ROOM_SECURITY = rOOM_SECURITY;
	}
	public String getROOM_AGENT() {
		return ROOM_AGENT;
	}
	public void setROOM_AGENT(String rOOM_AGENT) {
		ROOM_AGENT = rOOM_AGENT;
	}
	
	
	
	
	
}
