package com.java.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONValue;

import com.java.command.Command;
import com.java.member.dao.MemberDao;

public class IdCheck implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		int check = MemberDao.getInstance().idCheck(request.getParameter("id"));
		
		logger.info(logMsg + check); 
		String checkText = "";
		if(check == 0) {
			checkText = "사용 가능한 아이디입니다.";
		}else {
			checkText = "아이디가 이미 존재합니다.";
		}
		
		response.setContentType("application/x-json;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(checkText);
		
		return null;
	}

}
