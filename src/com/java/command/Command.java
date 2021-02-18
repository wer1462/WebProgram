package com.java.command;

import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public interface Command { // ¸â¹öº¯¼ö´Â static final
	
	public static final Logger logger=Logger.getLogger(Command.class.getName());
	public String logMsg = "MyLogMsg--------";	// == public static final String logMsg
	
	
	
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable;
}
