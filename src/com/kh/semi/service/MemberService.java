package com.kh.semi.service;

import java.sql.Connection;

import com.kh.semi.model.dao.MemberDao;
import com.kh.semi.model.vo.Member;

import static com.kh.semi.common.JDBCTemplate.*;


public class MemberService {
	private Connection conn;
	private MemberDao mDao = new MemberDao();
	public int MemberSignUp(Member m){
		conn = getConnection();
		
		int result = 0;
		result = mDao.MemberSignUp(conn,m);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	public int chkId(String id) {
		int result = 0;
		
		conn = getConnection();
		
		result = mDao.chkId(conn,id);
		
		close(conn);
		
		return result;
	}
	public Member memberLogin(Member m) {
		Member result = null;
		conn = getConnection();
		
		result = mDao.memberLogin(conn,m);
		
		close(conn);
		
		return result;
	}
	public int deleteMember(String userId) {
		conn = getConnection();
		
		int result = mDao.deleteMember(conn,userId);
		if(result > 0) commit(conn);
		else rollback(conn);
		
		close(conn);
		
		return result;
	}
	
	
	
	
	
}
