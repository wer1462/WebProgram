package com.java.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.command.Command;
import com.java.member.dao.MemberDao;
import com.java.member.dto.MemberDto;

public class MemberChangeInfoAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		String pwd = request.getParameter("pwd");
		HttpSession session = request.getSession();
		int member_num = (int) session.getAttribute("member_num");
		
		MemberDto memberDto = MemberDao.getInstance().ChangePage(pwd, member_num);
		if(memberDto == null) {
			return "/WEB-INF/view/member/member-change.jsp";
		}else {
			request.setAttribute("memberDto", memberDto);
			return "/WEB-INF/view/member/member-change-info.jsp";
		}
		
	}

}
