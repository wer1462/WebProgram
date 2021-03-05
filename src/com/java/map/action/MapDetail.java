package com.java.map.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.map.dao.MapDao;
import com.java.map.dto.MapDto;

public class MapDetail implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		//System.out.print(request.getParameter("room_Num"));
		MapDto mapDto = MapDao.getInstance().selectDetail(Integer.parseInt(request.getParameter("room_Num")));
		request.setAttribute("mapDto", mapDto);
		request.setAttribute("option", mapDto.getRoom_Options().split(","));
		request.setAttribute("optionlen", mapDto.getRoom_Options().split(",").length);
		if(mapDto.getROOM_SECURITY() == null) {
			request.setAttribute("security", null);
		}else {
			request.setAttribute("security", mapDto.getROOM_SECURITY().split(","));
			request.setAttribute("securitylen",mapDto.getROOM_SECURITY().split(",").length);
		}
		request.setAttribute("x", mapDto.getRoom_MapX());
		request.setAttribute("y", mapDto.getRoom_MapY());
		System.out.println(mapDto.toString());
		
		return "/WEB-INF/view/board/detail.jsp";
	}

}
