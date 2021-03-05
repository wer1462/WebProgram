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
		List<MapDto> mapList =	MapDao.getInstance().selectAll();
		
		
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
