package com.java.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.command.Command;
import com.java.member.dao.MemberDao;

public class FineIdAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");

		String EmailOrPhon = request.getParameter("fineId");
		
		String findId = MemberDao.getInstance().selectId(EmailOrPhon);
		logger.info(logMsg + findId);
				
		//HttpSession session = request.getSession();
		//session.setAttribute("findId", findId);
		
		if(findId == null || findId == "") {
			request.setAttribute("msg", "아이디가 없습니다.");
			request.setAttribute("msgone", "계정을 만드시겠습니까?");
			return "/WEB-INF/view/member/find-id.jsp";
		}
		else {
			 request.setAttribute("findId", findId);
			 logger.info(logMsg + findId);
			return "/WEB-INF/view/member/find-id-ac.jsp";
		}
	}
}
