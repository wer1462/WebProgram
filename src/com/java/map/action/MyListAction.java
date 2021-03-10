package com.java.map.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.command.Command;
import com.java.map.dao.MapDao;
import com.java.map.dto.MapDto;

public class MyListAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		HttpSession session = request.getSession();
		int member_num = Integer.parseInt(String.valueOf(session.getAttribute("member_num")));
	
		String pageNumber = request.getParameter("pageNumber");
		if(pageNumber == null) pageNumber="1";
		
		int currentPage = Integer.parseInt(pageNumber);
		logger.info(logMsg+"currentPage : "+currentPage);
				
		// 페이지당 출력할 게시물 수 : 10 [1] - 시작 번호 - 1 끝 번호 - 10 // [2] - 시작 번호 - 11 끝 번호 - 20
		int boardSize =8;
		int startRow =(currentPage-1)*boardSize+1;
		int endRow = currentPage*boardSize;
		
		int count = MapDao.getInstance().getCount();
		logger.info(logMsg + "count : "+count);
		//int pageNum=1;
		List<MapDto> boardList=null;
		if(count >0) {
			boardList = MapDao.getInstance().getBoardList(startRow, endRow,member_num);
			logger.info(logMsg+"boardListSize : "+boardList.size());
			//pageNum = count/boardSize+(count%boardSize==0 ? 0:1);
		}
		request.setAttribute("boardList", boardList);
		//request.setAttribute("pageNum", pageNum);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("count", count);
		request.setAttribute("boardSize", boardSize);
		
		
		return "/WEB-INF/view/board/myList.jsp";
	}

}
