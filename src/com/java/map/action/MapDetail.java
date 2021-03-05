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
		
		return "/WEB-INF/view/board/detail.jsp";
	}

}
