package com.java.map.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.map.dao.MapDao;
import com.java.map.dto.MapDto;

public class MapList implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		return "/WEB-INF/view/map/map.jsp";
	}

}
