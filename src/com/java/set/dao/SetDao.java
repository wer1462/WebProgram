package com.java.set.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.java.myBatis.SqlManager;
import com.java.set.dto.SetDto;

public class SetDao {
	private static SqlSessionFactory sqlSessionFactory = SqlManager.getInstance();
	private static SqlSession session;
	private static SetDao instance = new SetDao();
	
	public static SetDao getInstance() {
		return instance;		
	}
	public int insert(SetDto setDto) {
		
		int check = 0;
		
		try {
			session = sqlSessionFactory.openSession();
			check = session.insert("setInsert", setDto);
			session.commit();			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return check;
	}
	
	public int setingCount() {
	
		int count = 0;
		
		try {
			session = sqlSessionFactory.openSession();
			count = session.selectOne("setCount");
	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return count;
	}
	public List<SetDto> getSetList(int startRow,int endRow) {
		HashMap<String, Integer> hMap = new HashMap<String, Integer>();
		hMap.put("startRow", startRow);
		hMap.put("endRow", endRow);
		
		List<SetDto> valueList = null;
		
		try {
			session = sqlSessionFactory.openSession();
			valueList = session.selectList("setList", hMap);
						
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return valueList;
	}
	
	public SetDto read(int room_num) {	// ��ȸ��

		SetDto setDto = null;
		
		try {			
			session = sqlSessionFactory.openSession();
			// �ش� �۹�ȣ �������� --> select
			setDto = session.selectOne("setRead", room_num);
			
		} catch (Exception e) {
			e.printStackTrace();
			
			// Ʈ����ǿ��� ���� �߻��� ���
		} finally {
			session.close();
		}
		return setDto;
	}
	
	public int delete(int room_num) {
		
		int check = 0;
		
		try {			
			session = sqlSessionFactory.openSession();
			check = session.delete("setDelete", room_num);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return check;
	}
	
	public SetDto updateSel(int room_num) {

		SetDto setDto = null;
		
		try {
			session = sqlSessionFactory.openSession();
			setDto = session.selectOne("setRead", room_num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return setDto;
	}
}
