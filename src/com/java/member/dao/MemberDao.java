package com.java.member.dao;

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
	
	
	
}
