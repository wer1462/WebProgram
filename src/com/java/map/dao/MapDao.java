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
	
	public List<MapDto> selectAll(String room1, String room2, String room3,String room4, String sell1, String sell2, String sell3, String price1,String price_room1, String size_room1, String plus1, String plus2, String plus3, String plus4, String plus5, String plus6) {
		List<MapDto> mapList = null;
		HashMap<String,String> hMap = new HashMap<String, String>();
		hMap.put("room1", room1);
		System.out.println(room1);
		hMap.put("room2", room2);
		System.out.println(room2);
		hMap.put("room3", room3);
		System.out.println(room3);
		hMap.put("room4", room4);
		System.out.println(room4);
		
		hMap.put("sell1", sell1);
		hMap.put("sell2", sell2);
		hMap.put("sell3", sell3);
		
		hMap.put("price1", price1);

		hMap.put("price_room1", price_room1);

		hMap.put("size_room1", size_room1);
		
		hMap.put("plus1", plus1);
		hMap.put("plus2", plus2);
		hMap.put("plus3", plus3);
		hMap.put("plus4", plus4);
		hMap.put("plus5", plus5);
		hMap.put("plus6", plus6);
		
		
		
		
		try {
			session = sqlSessionFactory.openSession();
			mapList = session.selectList("mapList",hMap);
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

	public List<MapDto> getBoardList(int startRow, int endRow, String room1, String room2, String room3, String room4, String sell1, String sell2, String sell3, String price1, String price_room1, String size_room1, String plus1, String plus2, String plus3, String plus4, String plus5, String plus6) {
		List<MapDto> valueList = null;
		HashMap<String,Object> hMap = new HashMap<String, Object>();
		hMap.put("startRow", startRow);
		hMap.put("endRow", endRow);
		
		hMap.put("room1", room1);
		hMap.put("room2", room2);
		hMap.put("room3", room3);
		hMap.put("room4", room4);
		
		hMap.put("sell1", sell1);
		hMap.put("sell2", sell2);
		hMap.put("sell3", sell3);
		
		hMap.put("price1", price1);

		hMap.put("price_room1", price_room1);

		hMap.put("size_room1", size_room1);
		
		hMap.put("plus1", plus1);
		hMap.put("plus2", plus2);
		hMap.put("plus3", plus3);
		hMap.put("plus4", plus4);
		hMap.put("plus5", plus5);
		hMap.put("plus6", plus6);

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
			session.selectOne("mapDetailViewNum",str);
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
			session.commit();
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

	public List<MapDto> likeGetList(int member_num) {
		List<MapDto> mapList = null;
		
		try {
			session = sqlSessionFactory.openSession();
			mapList = session.selectList("myLikePageList",member_num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return mapList;
	}

	public void reportAdd(String member_num, int room_Num) {
		HashMap<String,Object> hMap = new HashMap<String, Object>();
		hMap.put("room_Num", room_Num);
		hMap.put("member_num", member_num+",");
		try {
			session = sqlSessionFactory.openSession();
			session.update("reportUpdate",hMap);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

	}
	
	
	
public int insert(MapDto setDto) {
		
		int check = 0;
		
		try {
			session = sqlSessionFactory.openSession();
			check = session.insert("setInsert", setDto);
			session.commit();			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return check;
	}
	
	public int setingCount() {
	
		int count = 0;
		
		try {
			session = sqlSessionFactory.openSession();
			count = session.selectOne("setCount");
	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return count;
	}
	public List<MapDto> getSetList(int startRow,int endRow) {
		HashMap<String, Integer> hMap = new HashMap<String, Integer>();
		hMap.put("startRow", startRow);
		hMap.put("endRow", endRow);
		
		List<MapDto> valueList = null;
		
		try {
			session = sqlSessionFactory.openSession();
			valueList = session.selectList("setList", hMap);
						
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return valueList;
	}
	
	public MapDto read(int room_num) {	// ��ȸ��

		MapDto setDto = null;
		
		try {			
			session = sqlSessionFactory.openSession();
			// �ش� �۹�ȣ �������� --> select
			setDto = session.selectOne("setRead", room_num);
			
		} catch (Exception e) {
			e.printStackTrace();
			
			// Ʈ����ǿ��� ���� �߻��� ���
		} finally {
			session.close();
		}
		return setDto;
	}
	
	public int delete(int room_num) {
		
		int check = 0;
		
		try {			
			session = sqlSessionFactory.openSession();
			check = session.delete("setDelete", room_num);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return check;
	}
	
	public MapDto updateSel(int room_num) {

		MapDto setDto = null;
		
		try {
			session = sqlSessionFactory.openSession();
			setDto = session.selectOne("setRead", room_num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return setDto;
	}

	public List<MapDto> myList(int member_num) {
		List<MapDto> mapList = null;	
		try {
			session = sqlSessionFactory.openSession();
			mapList = session.selectList("myList", member_num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return mapList;
	}
	
	
	
	public List<MapDto> getBoardList(int startRow, int endRow,int member_num) {
		List<MapDto> valueList = null;
		HashMap<String,Integer> hMap = new HashMap<String, Integer>();
		hMap.put("startRow", startRow);
		hMap.put("endRow", endRow);
		hMap.put("member_num", member_num);

		try {			
			session = sqlSessionFactory.openSession();
			valueList = session.selectList("myList",hMap);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		
		}
		System.out.println("valueListSize : " + valueList.size());
		return valueList;

	}
	
	public int userDelete(int member_num) {

		int check = 0;
		
		try {
			session = sqlSessionFactory.openSession();
			check = session.selectOne("userDelete", member_num);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return check;
	}

}
