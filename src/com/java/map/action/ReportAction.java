package com.java.map.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.map.dao.MapDao;

public class ReportAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		String member_num=  request.getParameter("member_num");
		int room_Num = Integer.parseInt(request.getParameter("room_Num"));
		
		MapDao.getInstance().reportAdd(member_num,room_Num);
		return null;
	}

}
