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
		String pageNumber = request.getParameter("pageNumber");
		if(pageNumber == null) pageNumber="1";
		
		int currentPage = Integer.parseInt(pageNumber);
		logger.info(logMsg+"currentPage : "+currentPage);
				
		// 페이지당 출력할 게시물 수 : 10 [1] - 시작 번호 - 1 끝 번호 - 10 // [2] - 시작 번호 - 11 끝 번호 - 20
		int boardSize =7;
		int startRow =(currentPage-1)*boardSize+1;
		int endRow = currentPage*boardSize;
		
		int count = MapDao.getInstance().getCount();
		logger.info(logMsg + "count : "+count);
		//int pageNum=1;
		List<MapDto> mapList=null;
		if(count >0) {
			mapList = MapDao.getInstance().getBoardList(startRow, endRow);
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
				map.put("room_Size", mapDto.getRoom_Size().split("/")[0]);
				map.put("room_Manageprice", mapDto.getRoom_Manageprice());
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
