package com.java.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.command.Command;
import com.java.map.dao.MapDao;

public class MemberDeleteAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		 HttpSession session = request.getSession();
		 int member_num = (int)session.getAttribute("member_num");
		 
		 member_num = MapDao.getInstance().userDelete(member_num);
		 
		 
		 
	     session.removeAttribute("member_num");
	     session.removeAttribute("member_name");
	     session.invalidate();
	     
	     
	     
	     return "/WEB-INF/view/member/memberDelete.jsp";

	}

}
