package com.java.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.command.Command;
import com.java.member.dao.MemberDao;

public class MemberUpdate implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		int member_num = (int) session.getAttribute("member_num");
		String member_Pwd = request.getParameter("member_Pwd");
		String member_Email = request.getParameter("member_Email");
		String phnNum = request.getParameter("phnNum");
		int check = MemberDao.getInstance().updateUser(member_num,member_Pwd,member_Email,phnNum);
		
		if(check > 0) {
			request.setAttribute("check", check);
			return "/WEB-INF/view/member/updateOk.jsp";
		}else {
			request.setAttribute("check", check);
			return "/WEB-INF/view/member/updateOk.jsp";
		}
		
		
	}

}
