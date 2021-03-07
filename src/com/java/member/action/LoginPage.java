package com.java.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.command.Command;
import com.java.member.dao.MemberDao;
import com.java.member.dto.MemberDto;

public class LoginPage implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		String id = request.getParameter("id");
		String password = request.getParameter("password");
		logger.info(logMsg + id + "\t" + password);
		
		request.setAttribute("id", id);
		request.setAttribute("password", password);
		
		MemberDto check = MemberDao.getInstance().selectLogin(id, password);
		logger.info(logMsg + check);
		
		HttpSession session = request.getSession();
				
		if(check == null) {
			request.setAttribute("msg", "비밀번호 또는 아이디를 확인해주세요.");
			return "/WEB-INF/view/member/login.jsp";
		}
		else {
			
			session.setAttribute("member_name", check.getMember_Name());
			session.setAttribute("member_num", check.getMember_Num());
			return "/template/main.jsp";
		}
		
	}

}
