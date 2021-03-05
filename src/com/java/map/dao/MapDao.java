package com.java.map.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.java.command.Command;
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

	public List<MapDto> selectAll(String[] arr) {
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
		try {
			session = sqlSessionFactory.openSession();
			mapDto = session.selectOne("mapDetail",str);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return mapDto;
	}
	

}
