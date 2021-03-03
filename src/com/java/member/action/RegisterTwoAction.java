package com.java.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;

public class RegisterTwoAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		
		request.setAttribute("member_Id", request.getParameter("member_Id"));
		request.setAttribute("member_Pwd", request.getParameter("member_Pwd"));
		
		return "/WEB-INF/view/member/member2.jsp";
	}

}
