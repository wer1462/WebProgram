package com.java.map.dto;

public class MapDto {
	@Override
	public String toString() {
		return "MapDto [room_MapX=" + room_MapX + ", room_MapY=" + room_MapY + ", room_Num=" + room_Num
				+ ", room_RentType=" + room_RentType + ", room_LikeNum=" + room_LikeNum + ", room_Manageprice="
				+ room_Manageprice + ", room_Type=" + room_Type + ", room_Price=" + room_Price + "]";
	}
	private String room_MapX;
	private String room_MapY;
	private int room_Num;
	private String room_RentType;
	private int room_LikeNum;
	private String room_Manageprice;
	private String room_Type;
	private String room_Price;
	
	
	
	
	
	public String getRoom_RentType() {
		return room_RentType;
	}
	public void setRoom_RentType(String room_RentType) {
		this.room_RentType = room_RentType;
	}
	public int getRoom_LikeNum() {
		return room_LikeNum;
	}
	public void setRoom_LikeNum(int room_LikeNum) {
		this.room_LikeNum = room_LikeNum;
	}
	public String getRoom_Manageprice() {
		return room_Manageprice;
	}
	public void setRoom_Manageprice(String room_Manageprice) {
		this.room_Manageprice = room_Manageprice;
	}
	public String getRoom_Type() {
		return room_Type;
	}
	public void setRoom_Type(String room_Type) {
		this.room_Type = room_Type;
	}
	public String getRoom_Price() {
		return room_Price;
	}
	public void setRoom_Price(String room_Price) {
		this.room_Price = room_Price;
	}
	public int getRoom_Num() {
		return room_Num;
	}
	public void setRoom_Num(int room_Num) {
		this.room_Num = room_Num;
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
	
	
}
