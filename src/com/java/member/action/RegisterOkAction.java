package com.java.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.member.dao.MemberDao;
import com.java.member.dto.MemberDto;

public class RegisterOkAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		MemberDto memberDto = new MemberDto();
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");	
		memberDto.setMember_Id(request.getParameter("member_Id"));
		memberDto.setMember_Pwd(request.getParameter("member_Pwd"));
		memberDto.setMember_Name(request.getParameter("member_Name"));
		String birth = request.getParameter("bdyy")+"-"+request.getParameter("bdmm")+"-"+request.getParameter("bddd");
		memberDto.setMEMBER_BIRTH(birth);
		memberDto.setMember_Email(request.getParameter("member_Email"));
		String phone = "";
		if(request.getParameter("phnNum").length() == 11) {
			phone = request.getParameter("phnNum").substring(0, 3)+"-"+request.getParameter("phnNum").substring(3, 7)+"-"+request.getParameter("phnNum").substring(7, 11);
		}else {
			phone = request.getParameter("phnNum").substring(0, 3)+"-"+request.getParameter("phnNum").substring(3, 6)+"-"+request.getParameter("phnNum").substring(6, 10);
		}
		memberDto.setMember_Telephone(phone);
		System.out.println(memberDto.toString());
		
		int check = MemberDao.getInstance().insertRegister(memberDto);
		request.setAttribute("check", check);
		
		return "/WEB-INF/view/member/login.jsp";
	}
	
}
