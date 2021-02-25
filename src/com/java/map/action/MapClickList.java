package com.java.map.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.map.dao.MapDao;
import com.java.map.dto.MapDto;

public class MapClickList implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		String[] arr = request.getParameterValues("list")[0].split(",");
		System.out.println(arr[0]);
		
		List<MapDto> mapList = MapDao.getInstance().selectAll(arr);
		System.out.println(mapList.get(0).toString());
		
		return null;
	}

}
