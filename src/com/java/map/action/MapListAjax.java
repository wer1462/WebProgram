package com.java.map.action;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONValue;

import com.java.command.Command;
import com.java.map.dao.MapDao;
import com.java.map.dto.MapDto;

public class MapListAjax implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		String room1 = request.getParameter("room1");
		String room2 = request.getParameter("room2");
		String room3 = request.getParameter("room3");
		String room4 = request.getParameter("room4");
		
		String sell1 = request.getParameter("sell1");
		String sell2 = request.getParameter("sell2");
		String sell3 = request.getParameter("sell3");
		
		String price1 = request.getParameter("price1");
		String price_room1 = request.getParameter("price_room1");
		
		String size_room1 = request.getParameter("size_room1");
		
		String plus1 = request.getParameter("plus1");
		String plus2 = request.getParameter("plus2");
		String plus3 = request.getParameter("plus3");
		String plus4 = request.getParameter("plus4");
		String plus5 = request.getParameter("plus5");
		String plus6 = request.getParameter("plus6");
		
		
		
		String pageNumber = request.getParameter("pageNumber");
		if(pageNumber == null) pageNumber="1";
		
		int currentPage = Integer.parseInt(pageNumber);
		logger.info(logMsg+"currentPage : "+currentPage);
				
		// 페이지당 출력할 게시물 수 : 10 [1] - 시작 번호 - 1 끝 번호 - 10 // [2] - 시작 번호 - 11 끝 번호 - 20
		int boardSize =10;
		int startRow =(currentPage-1)*boardSize+1;
		int endRow = currentPage*boardSize;
		
		int count = MapDao.getInstance().getCount();
		logger.info(logMsg + "count : "+count);
		//int pageNum=1;
		List<MapDto> mapList=null;
		if(count >0) {
			mapList = MapDao.getInstance().getBoardList(startRow, endRow,room1,room2,room3,room4,sell1,sell2,sell3,price1,price_room1,size_room1,plus1,plus2,plus3,plus4,plus5,plus6);
			logger.info(logMsg+"boardListSize : "+mapList.size());
			//pageNum = count/boardSize+(count%boardSize==0 ? 0:1);
		}
			
		JSONArray jsonArray = new JSONArray();
		
		if(mapList != null) {
			for (int i = 0; i < mapList.size(); i++) {
				MapDto mapDto = mapList.get(i);
				
				HashMap<String, Object> map = new HashMap<String, Object>();
				if(mapDto.getRoom_Type().indexOf("원룸") != -1) {
					map.put("room_Type", "원룸");
				}else if(mapDto.getRoom_Type().indexOf("투룸") != -1) {
					map.put("room_Type", "투룸");
				}
				else if(mapDto.getRoom_Type().indexOf("쓰리룸") != -1) {
					map.put("room_Type", "쓰리룸");
				}
				else if(mapDto.getRoom_Type().indexOf("오피스텔") != -1) {
					map.put("room_Type", "오피스텔");
				}
				map.put("room_Floor", mapDto.getRoom_Floor().split("/")[0]);
				map.put("room_Size", mapDto.getRoom_Size());
				map.put("room_Manageprice", mapDto.getRoom_Manageprice());
				map.put("room_LikeNum", mapDto.getRoom_LikeNum());
				map.put("room_Price", mapDto.getRoom_Price());
				map.put("room_Num",mapDto.getRoom_Num());
				map.put("room_MapX",mapDto.getRoom_MapX());
				map.put("room_MapY",mapDto.getRoom_MapY());
				jsonArray.add(map);
			}
			
			HashMap<String, Object> jsonMap = new HashMap<String, Object>();
			jsonMap.put("map", jsonArray);
			jsonMap.put("currentPage", currentPage);
			jsonMap.put("count", count);
			jsonMap.put("boardSize", boardSize);
			 
			
			
			String jsonText = JSONValue.toJSONString(jsonMap);
			logger.info(logMsg + jsonText); 
			
			if(jsonText != null) {
				response.setContentType("application/x-json;charset=utf-8");
				PrintWriter out = response.getWriter();
				out.print(jsonText);
			}
		}
		
		
		
		return null;
	}

}
