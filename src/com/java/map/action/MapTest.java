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

public class MapTest implements Command {

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

		
		
	
		
		
		
		
		List<MapDto> mapList =	MapDao.getInstance().selectAll(room1,room2,room3,room4,sell1,sell2,sell3,price1,price_room1,size_room1,plus1,plus2,plus3,plus4,plus5,plus6);
		
		
		JSONArray jsonArray = new JSONArray();
		
		if(mapList != null) {
			for (int i = 0; i < mapList.size(); i++) {
				MapDto mapDto = mapList.get(i);
				
				HashMap<String, Object> map = new HashMap<String, Object>();
				map.put("x", mapDto.getRoom_MapX());
				map.put("y", mapDto.getRoom_MapY());
				map.put("num", mapDto.getRoom_Num());
				jsonArray.add(map);
			}
			
			HashMap<String, Object> jsonMap = new HashMap<String, Object>();
			jsonMap.put("map", jsonArray);
			
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
