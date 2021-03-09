package com.java.member.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.java.member.dto.MemberDto;
import com.java.myBatis.SqlManager;

public class MemberDao {
	private static SqlSessionFactory sqlSessionFactory = SqlManager.getInstance();
	private SqlSession session;
	
	private static MemberDao instance = new MemberDao();
	public static MemberDao getInstance() {
		
		return instance;
	}
	public int idCheck(String id) {
		int check = 0;
		System.out.println(check);
		try {
			session = sqlSessionFactory.openSession();
			check = session.selectOne("checkId",id);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return check;
	}
	public int insertRegister(MemberDto memberDto) {
		int check = 0;
		
		try {
			session = sqlSessionFactory.openSession();
			check = session.insert("register",memberDto);
			session.commit();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
			
		return check;
	}
	
	public MemberDto selectLogin(String id, String password) {
		MemberDto check=null;
		HashMap<String, Object> loginCheckId = new HashMap<String, Object>();
		loginCheckId.put("id", id);
		loginCheckId.put("password", password);
		try {	
			
			session=sqlSessionFactory.openSession();
			check=session.selectOne("loginCheckId",loginCheckId);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return check;
	}
	public String selectId(String EmailOrPhon) {
		String findId = "";
		System.out.println(findId);
		try {
			session = sqlSessionFactory.openSession();
			findId = session.selectOne("loginfindId", EmailOrPhon);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return findId;
	}
	
	public String selectPw(String EmailOrPhon) {
		String findPw = "";
		System.out.println(findPw);
		try {
			session = sqlSessionFactory.openSession();
			findPw = session.selectOne("loginfindPw", EmailOrPhon);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return findPw;
	}
	public void likePagePlus(String room_num, int member_num, String likeCheck) {
		HashMap<String, Object> loginCheckId = new HashMap<String, Object>();
		loginCheckId.put("member_num", member_num);
		loginCheckId.put("likeCheck", likeCheck);
		loginCheckId.put("room_num", room_num+",");
		loginCheckId.put("room_numInt", Integer.parseInt(room_num));
		try {
			session = sqlSessionFactory.openSession();
			session.update("likePageUpdate", loginCheckId);
			session.update("likePageUpdateNum", loginCheckId);
			session.commit();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
			
		}
		
	}
	public String likeList(int member_num) {
		String str = null;
		try {
			session = sqlSessionFactory.openSession();
			str = session.selectOne("likeList",member_num);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();		
		}
		return str;
	}
	public MemberDto ChangePage(String pwd, int member_num) {
		MemberDto memberDto = null;
		HashMap<String, Object> loginCheckId = new HashMap<String, Object>();
		loginCheckId.put("member_num", member_num);
		loginCheckId.put("pwd", pwd);
		try {
			session = sqlSessionFactory.openSession();
			memberDto = session.selectOne("ChangePage", loginCheckId);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
			
		}
		
		return memberDto;
	}
	public int updateUser(int member_num, String member_Pwd, String member_Email, String phnNum) {
		HashMap<String, Object> loginCheckId = new HashMap<String, Object>();
		loginCheckId.put("member_num", member_num);
		loginCheckId.put("member_Pwd", member_Pwd);
		loginCheckId.put("member_Email", member_Email);
		loginCheckId.put("phnNum", phnNum);
		int check = 0;
		try {
			session = sqlSessionFactory.openSession();
			check = session.update("updateuser", loginCheckId);
			session.commit();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
			
		}
		return check;
	}
	
	
}
