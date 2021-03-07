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
	
	public String selectLogin(String id, String password) {
		String check="";
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
	
	
}
