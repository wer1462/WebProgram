package com.java.map.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.command.Command;
import com.java.map.dao.MapDao;
import com.java.map.dto.MapDto;
import com.java.member.dao.MemberDao;

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
		HttpSession session = request.getSession();
		
		List<MapDto> listDto = MapDao.getInstance().detailList(mapDto.getRoom_Num(),mapDto.getRoom_memberNum());
		request.setAttribute("Dtolist", listDto);
			
		if(session.getAttribute("member_num") != null) {
			int member_num = Integer.parseInt(String.valueOf(session.getAttribute("member_num")));
			String likeList = MemberDao.getInstance().likeList(member_num);
			System.out.println(likeList+"======");
			if(likeList != null) {
				if(likeList.contains(String.valueOf(mapDto.getRoom_Num()))) {
					request.setAttribute("check", "checked");					
				}
			}	
		}	
		return "/WEB-INF/view/board/detail.jsp";
	}

}
