package com.java.map.action;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.java.command.Command;
import com.java.map.dao.MapDao;
import com.java.map.dto.MapDto;


public class RegisterOkAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		MapDto setDto = new MapDto();
		
		
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
		
		String room_Price1 = "";
		String room_Price2 = "";
		
		String room_Deposit1 = "";
		String room_Deposit2 = "";
		
		String room_Floor = "";
		
		System.out.println(request.getParameterValues("room_Options"));
		
		String fileall ="";
		String tt = "";
		tt = Long.toString(System.currentTimeMillis());
		
		while(iter.hasNext()) {
			FileItem fileItem = iter.next();
			System.out.println("1");
				if(fileItem.isFormField()) { //text
					if(fileItem.getFieldName().equals("room_Type")) {
						setDto.setRoom_Type(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_RentType")) {
						setDto.setRoom_RentType(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Price1")) {
						setDto.setRoom_Price1(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Price2")) {
						setDto.setRoom_Price2(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Deposit1")) {
						setDto.setRoom_Deposit1(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Deposit2")) {
						setDto.setRoom_Deposit2(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Manageprice")) {
						setDto.setRoom_Manageprice(fileItem.getString("utf-8")+"만 원");
					}
					if(fileItem.getFieldName().equals("aa")) {
						setDto.setAa(fileItem.getString("utf-8"));		
					}
					if(fileItem.getFieldName().equals("bb")) {
						setDto.setBb(fileItem.getString("utf-8"));		
					}
					if(fileItem.getFieldName().equals("cc")) {
						setDto.setCc(fileItem.getString("utf-8"));		
					}
					if(fileItem.getFieldName().equals("room_LiveDate")) {
						setDto.setROOM_MOVEIN(fileItem.getString("utf-8"));		
					}	
					if(fileItem.getFieldName().equals("room_SupplySizeM")) {
						setDto.setRoom_SupplySizeM(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_DedicatedSizeM")) {
						setDto.setRoom_DedicatedSizeM(fileItem.getString("utf-8"));
					}
					
					if(fileItem.getFieldName().equals("room_BuildingFloor")) {
						setDto.setRoom_BuildingFloor(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Floor")) {
						setDto.setRoom_Floorjs(fileItem.getString("utf-8"));
					}
					
					if(fileItem.getFieldName().equals("room_Count")) {
						setDto.setRoom_Count(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Toilet")) {
						setDto.setRoom_Toilet(fileItem.getString("utf-8"));
					}
					
					if(fileItem.getFieldName().equals("room_Parking")) {
						setDto.setRoom_Parking1(fileItem.getString("utf-8"));
					}	
					if(fileItem.getFieldName().equals("room_Parking2")) {
						setDto.setRoom_Parking2(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Parking3")) {
						setDto.setRoom_Parking(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Pet")) {
						setDto.setROOM_ANIMAL(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Elevator")) {
						setDto.setROOM_ELEVATOR(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Built_In")) {
						setDto.setROOM_BUILTIN(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Veranda")) {
						setDto.setROOM_VERANDA(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Options")) {
						setDto.setRoom_Options(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Security")) {
						setDto.setROOM_SECURITY(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_Content")) {
						setDto.setRoom_Content(fileItem.getString("utf-8"));
					}
					
				
					if(fileItem.getFieldName().equals("room_AgentStore")) {
		
						setDto.setROOM_AGENT(fileItem.getString("utf-8"));

					}
					if(fileItem.getFieldName().equals("room_Agent")) {
						setDto.setRoom_WriterName(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_MapX")) {
						setDto.setRoom_MapX(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("room_MapY")) {
						setDto.setRoom_MapY(fileItem.getString("utf-8"));
					}
					if(fileItem.getFieldName().equals("tellphone")) {
						setDto.setRoom_Telephone(fileItem.getString("utf-8"));
					}
		
				} 
				else {								
				if(fileItem.getFieldName().equals("file")) {
					room_FileName = fileItem.getName();
					String ext = room_FileName.substring(room_FileName.lastIndexOf(".") + 1);
					logger.info(logMsg + room_FileName);
					
					logger.info(logMsg + member_num + "////"+ room_FileName);
					if(room_FileName==null || room_FileName.equals("")) {
						continue;
					}
					
					room_FileName = String.valueOf(member_num);
					
					//String timeName = Long.toString(System.currentTimeMillis()) + "_" + fileName;
					timeName = Long.toString(System.currentTimeMillis()) + "_" + room_FileName + "." + ext;
					
					upload.setSizeMax(1024 * 1024 * 10);
					long fileSize = fileItem.getSize();					
					logger.info(logMsg + room_FileName + ":" + fileSize);
					
					
					File path = new File("C:\\Users\\wer14\\workspaceJava\\WebProject\\WebContent\\images\\"+tt+"_"+room_FileName);
					path.mkdir();
										
					if(path.exists() && path.isDirectory()) {
						File file = new File(path, timeName);
						logger.info(logMsg + room_FileName);
						fileItem.write(file);
						setDto.setRoom_FileName(timeName);
						setDto.setRoom_FileSize(fileSize);
						setDto.setRoom_Path("images/"+tt+"_"+room_FileName+"/");
						
						logger.info(logMsg + path);
					}
					
					
					
					
				}
			}
		}
		
		setDto.setRoom_memberNum(member_num);
		if(setDto.getRoom_RentType() == "월세") {
			room_Price1 = setDto.getRoom_Price1() + "00000";
			String a = String.valueOf(Integer.parseInt(setDto.getRoom_Price1())+Integer.parseInt(setDto.getRoom_Price2()));
			room_Deposit1 = setDto.getRoom_Deposit1() + "00000";
			String aa = String.valueOf(Integer.parseInt(room_Deposit1)+Integer.parseInt(setDto.getRoom_Deposit2()));
			setDto.setRoom_Price(aa+"/"+a);
		}else {
			setDto.setRoom_Price(setDto.getRoom_Price1()+"억 "+setDto.getRoom_Price2());
		}
		
		
		if(setDto.getROOM_MOVEIN() == null) {
			setDto.setROOM_MOVEIN(setDto.getAa()+"."+setDto.getBb()+"."+setDto.getCc());
		}
		
		setDto.setRoom_Size(setDto.getRoom_DedicatedSizeM()+" / "+setDto.getRoom_SupplySizeM()+"㎡평");
		
		setDto.setRoom_Floor(setDto.getRoom_Floorjs()+"층"+" / "+setDto.getRoom_BuildingFloor()+"층");
		setDto.setRoom_Structure(setDto.getRoom_Count()+"개"+" / "+setDto.getRoom_Toilet()+"개");
		if(setDto.getRoom_Parking() == null) {
			setDto.setRoom_Parking(String.valueOf(Double.parseDouble(setDto.getRoom_Parking1())+Double.parseDouble(setDto.getRoom_Parking2()))+"대");		
		}
		logger.info(logMsg + setDto.toString());
		setDto.setROOM_BOILER("개별난방");
		
		if(setDto.getROOM_AGENT() ==null) {
			setDto.setROOM_AGENT("개인");
		}
		
		File dir = new File("C:\\Users\\wer14\\workspaceJava\\WebProject\\WebContent\\images\\"+tt+"_"+room_FileName);
		String[] filenames = dir.list();
		for (int i = 0; i < filenames.length; i++) {
			fileall += filenames[i]+",";
		}
		setDto.setFileall(fileall);
		int check = MapDao.getInstance().insert(setDto);
	
		
		
		
	    
		request.setAttribute("check", check);
		return "/template/main.jsp";
	}

}
