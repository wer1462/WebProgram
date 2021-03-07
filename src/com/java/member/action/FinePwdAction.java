package com.java.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.member.dao.MemberDao;

public class FinePwdAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		//String id = request.getParameter("id");
		String EmailOrPhon = request.getParameter("findPw");
		
		String findPw = MemberDao.getInstance().selectPw(EmailOrPhon);
		logger.info(logMsg + findPw);
		
		request.setAttribute("findPw", findPw);
		logger.info(logMsg + findPw);
		return "/WEB-INF/view/member/find-pw-ac.jsp";
		
	}

}
