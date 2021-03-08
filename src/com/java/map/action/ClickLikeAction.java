package com.java.map.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.command.Command;
import com.java.member.dao.MemberDao;

public class ClickLikeAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		String likeCheck = request.getParameter("like");
		System.out.println(likeCheck);
		String room_num = request.getParameter("room_Num");
		HttpSession session = request.getSession();
		int member_num = Integer.parseInt(String.valueOf(session.getAttribute("member_num")));
		
		MemberDao.getInstance().likePagePlus(room_num,member_num,likeCheck);
		
		return null;
	}

}
