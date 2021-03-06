package com.java.map.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;



import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.java.map.dto.MapDto;
import com.java.myBatis.SqlManager;

public class MapDao{
	private static SqlSessionFactory sqlSessionFactory = SqlManager.getInstance();
	private SqlSession session;
	
	private static MapDao instance = new MapDao();
	public static MapDao getInstance() {
		
		return instance;
	}
	
	public List<MapDto> selectAll() {
		List<MapDto> mapList = null;
		
		try {
			session = sqlSessionFactory.openSession();
			mapList = session.selectList("mapList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return mapList;
	}

	public List<MapDto> selectAllList(String[] arr) {
		List<MapDto> mapList = new ArrayList<>();
		System.out.println(arr[0]);
		try {
			session = sqlSessionFactory.openSession();
			
			for(int i = 0;i<arr.length;i++) {
				int num = Integer.parseInt(arr[i]);
				mapList.add((MapDto) session.selectOne("mapClickList",num));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return mapList;
	}

	public int getCount() {
		int count = 0;

		try {
			session = sqlSessionFactory.openSession();
			count = session.selectOne("boardCount");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return count;
	}

	public List<MapDto> getBoardList(int startRow, int endRow) {
		List<MapDto> valueList = null;
		HashMap<String,Integer> hMap = new HashMap<String, Integer>();
		hMap.put("startRow", startRow);
		hMap.put("endRow", endRow);

		try {
			session = sqlSessionFactory.openSession();
			valueList = session.selectList("boardList",hMap);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return valueList;
	}

	public MapDto selectDetail(int str) {
		MapDto mapDto = null;
		String room = "";
		try {
			session = sqlSessionFactory.openSession();
			mapDto = session.selectOne("mapDetail",str);
			if(mapDto.getRoom_Type().indexOf("원룸") != -1) {
				room = "원룸";
			}else if(mapDto.getRoom_Type().indexOf("투룸") != -1) {
				room = "투룸";
			}
			else if(mapDto.getRoom_Type().indexOf("쓰리룸") != -1) {
				room = "쓰리룸";
			}
			else if(mapDto.getRoom_Type().indexOf("오피스텔") != -1) {
				room = "오피스텔";
			}
			mapDto.setSubRoom_Type(room);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return mapDto;
	}

	public List<MapDto> detailList(int room_Num, int room_memberNum) {
		
		String room = "";
		List<MapDto> mapList = null;
		HashMap<String,Integer> hMap = new HashMap<String, Integer>();
		hMap.put("room_Num", room_Num);
		hMap.put("room_memberNum", room_memberNum);
		try {
			session = sqlSessionFactory.openSession();
			int num = session.selectOne("countNum",hMap);
			if(num>4) {
				num = num - 4;
				num = session.selectOne("randomNum",num);
				hMap.put("startRow", num);
				num += 3;
				hMap.put("endRow", num);
			}else {
				hMap.put("startRow", 1);
				hMap.put("endRow", num);
			}

			mapList = session.selectList("mapDetailList",hMap);
			
			for(int i = 0;i<mapList.size();i++) {
				if(mapList.get(i).getRoom_Type().indexOf("원룸") != -1) {
					room = "원룸";
				}else if(mapList.get(i).getRoom_Type().indexOf("투룸") != -1) {
					room = "투룸";
				}
				else if(mapList.get(i).getRoom_Type().indexOf("쓰리룸") != -1) {
					room = "쓰리룸";
				}
				else if(mapList.get(i).getRoom_Type().indexOf("오피스텔") != -1) {
					room = "오피스텔";
				}
				mapList.get(i).setRoom_Floor(mapList.get(i).getRoom_Floor().split("/")[0]);
				mapList.get(i).setSubRoom_Type(room);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return mapList;
	}
	

}
