package com.java.controller;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.java.command.Command;



@WebServlet(urlPatterns="*.in", initParams = @WebInitParam(name="configFile",value="/WEB-INF/URICommand.properties"))
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Object> commandMap = new HashMap<String, Object>(); // 키값이 들어왔을떄 해당클래스의 주소값을 찾아주는 함수 

	
	@Override
	public void init(ServletConfig config) throws ServletException {
		String configFile=config.getInitParameter("configFile");
		Command.logger.info(Command.logMsg+configFile);
		
		
		FileInputStream fis = null;
		BufferedInputStream bis = null;
		Properties pro = new Properties();
		
		try {
			String path=config.getServletContext().getRealPath(configFile);
			System.out.println(path);
			
			fis=new FileInputStream(path);
			bis=new BufferedInputStream(fis);
			pro.load(bis);
			
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			try {
				if(bis!=null) bis.close();
				if(fis!=null) fis.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		Iterator<Object> keyIter=pro.keySet().iterator(); //key값 뽑기
		
		while(keyIter.hasNext()) {
			String key=(String)keyIter.next();
			String value=pro.getProperty(key);  // key의 value값 뽑기
			
			Command.logger.info(Command.logMsg+key);
			Command.logger.info(Command.logMsg+value+"\n");
			
			try {
				Class<?> hClass=Class.forName(value); //문자열을 클래스로 바꾸기(value를 클래스로)
				Object hObj=hClass.newInstance();
				commandMap.put(key, hObj);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cmd=request.getServletPath();
		Command.logger.info(Command.logMsg+cmd);
		
		String viewPage=null;
		try {
			Command com = (Command)commandMap.get(cmd); // 키값  뽑아오기
			viewPage = com.actionDo(request, response);
			
			Command.logger.info(Command.logMsg+viewPage);
		} catch (Throwable e) {
			e.printStackTrace();
		}

		
		RequestDispatcher rd = null;
		
		request.setAttribute("viewPage", viewPage);
		rd = request.getRequestDispatcher("");//경로 재설정
		
		
		
		rd.forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
