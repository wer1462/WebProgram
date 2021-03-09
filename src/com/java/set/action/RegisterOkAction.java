package com.java.set.action;

import java.io.File;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.java.command.Command;
import com.java.set.dao.SetDao;
import com.java.set.dto.SetDto;

public class RegisterOkAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		SetDto setDto = new SetDto();
		
		
//		String rr = request.getParameter("room_Price");
//		logger.info(logMsg + rr);
//		String aa = request.getParameter("aa");
//		logger.info(logMsg + aa);
//		
//		String room_LiveDateymd = request.getParameter("aa")+"-"+request.getParameter("bb")+"-"+request.getParameter("cc");
//		logger.info(logMsg + room_LiveDateymd);
		
		DiskFileItemFactory factory = new DiskFileItemFactory();
		
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		List<FileItem> list = upload.parseRequest(request);
		Iterator<FileItem> iter = list.iterator();
		
		HttpSession session = request.getSession();
		int member_num =(int) session.getAttribute("member_num");
		 
		logger.info(logMsg + member_num);
		
		String timeName = "";
		String room_FileName = "";
		
		while(iter.hasNext()) {
			FileItem fileItem = iter.next();
				
				if(fileItem.isFormField()) { //text
					if(fileItem.getFieldName().equals("room_Type")) {
						setDto.setRoom_Type(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_RentType")) {
						setDto.setRoom_RentType(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Price")) {
						setDto.setRoom_Price(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Deposit")) {
						setDto.setRoom_Deposit(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Manageprice")) {
						setDto.setRoom_Manageprice(Integer.parseInt(fileItem.getString()));
					}
					if(fileItem.getFieldName().equals("hidroom_LiveDate")) {
						setDto.setRoom_LiveDate(fileItem.getString("utf-8"));		
					}
					//else if(fileItem.getFieldName().equals("room_LiveDateyy")) {
						//setDto.setRoom_LiveDate(fileItem.getString(room_LiveDateymd));
					//}
					if(fileItem.getFieldName().equals("room_SupplySize")) {
						setDto.setRoom_SupplySize(Double.parseDouble(fileItem.getString()));
					}
					if(fileItem.getFieldName().equals("room_SupplySizeM")) {
						setDto.setRoom_SupplySizeM(Double.parseDouble(fileItem.getString()));
					}
					if(fileItem.getFieldName().equals("room_DedicatedSize")) {
						setDto.setRoom_DedicatedSize(Double.parseDouble(fileItem.getString()));
					}
					if(fileItem.getFieldName().equals("room_DedicatedSizeM")) {
						setDto.setRoom_DedicatedSizeM(Double.parseDouble(fileItem.getString()));
					}
					if(fileItem.getFieldName().equals("room_BuildingFloor")) {
						setDto.setRoom_BuildingFloor(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Floor")) {
						setDto.setRoom_Floor(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Count")) {
						setDto.setRoom_Count(Integer.parseInt(fileItem.getString()));
					}
					if(fileItem.getFieldName().equals("room_Toilet")) {
						setDto.setRoom_Toilet(Integer.parseInt(fileItem.getString()));
					}
					if(fileItem.getFieldName().equals("hidroom_Parking")) {
						setDto.setRoom_Parking(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Pet")) {
						setDto.setRoom_Pet(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Elevator")) {
						setDto.setRoom_Elevator(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Built_In")) {
						setDto.setRoom_Built_In(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Veranda")) {
						setDto.setRoom_Veranda(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("hidroom_Options")) {
						setDto.setRoom_Options(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("hidroom_Security")) {
						setDto.setRoom_Security(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Content")) {
						setDto.setRoom_Content(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Address")) {
						setDto.setRoom_Address(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Dong")) {
						setDto.setRoom_Dong(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Ho")) {
						setDto.setRoom_Ho(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_AgentStore")) {
						setDto.setRoom_AgentStore(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Agent")) {
						setDto.setRoom_Agent(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_MapX")) {
						setDto.setRoom_MapX(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_MapY")) {
						setDto.setRoom_MapY(fileItem.getString("utf-8"));
					}
		
				} 
				else {								
				if(fileItem.getFieldName().equals("file")) {
					room_FileName = fileItem.getName();
					String ext = room_FileName.substring(room_FileName.lastIndexOf(".") + 1);
					logger.info(logMsg + room_FileName);
					room_FileName = String.valueOf(member_num);
					logger.info(logMsg + member_num + "////"+ room_FileName);
					if(room_FileName==null || room_FileName.equals("")) {
						continue;
					}
					
					//String timeName = Long.toString(System.currentTimeMillis()) + "_" + fileName;
					timeName = Long.toString(System.currentTimeMillis()) + "_" + room_FileName + "." + ext;
					
					upload.setSizeMax(1024 * 1024 * 10);
					long fileSize = fileItem.getSize();					
					logger.info(logMsg + room_FileName + ":" + fileSize);
					
					File path = new File("C:\\Users\\hoon1\\eclipse-workspace\\GiBuDong\\WebContent\\fileimg");
					path.mkdir();
										
					if(path.exists() && path.isDirectory()) {
						File file = new File(path, timeName);
						logger.info(logMsg + room_FileName);
						fileItem.write(file);
						setDto.setRoom_FileName(timeName);
						setDto.setRoom_FileSize(fileSize);
						setDto.setRoom_Path("img/"+timeName);
						
						logger.info(logMsg + path);
					}
				}
			}
		}
		logger.info(logMsg + setDto.toString());
		
		int check = SetDao.getInstance().insert(setDto);
		
		logger.info(logMsg + room_FileName);
		logger.info(logMsg + check);
		
	    
		request.setAttribute("check", check);
		return "/template/main.jsp";
	}

}
