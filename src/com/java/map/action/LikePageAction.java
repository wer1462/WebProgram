package com.java.map.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.command.Command;
import com.java.map.dao.MapDao;
import com.java.map.dto.MapDto;

public class LikePageAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		HttpSession session = request.getSession();
		int member_num = Integer.parseInt(String.valueOf(session.getAttribute("member_num")));
		List<MapDto> mapList = MapDao.getInstance().likeGetList(member_num);
		
		request.setAttribute("mapList", mapList);
		
		return "/WEB-INF/view/board/like.jsp";
	}

}
