package com.java.map.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.map.dao.MapDao;

public class MyListRemover implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		int roomNum = Integer.parseInt(request.getParameter("room_num"));
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		
		int check = MapDao.getInstance().delete(roomNum);
		
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("check", check);
		return "/WEB-INF/view/board/myListRemove.jsp";
	}

}
