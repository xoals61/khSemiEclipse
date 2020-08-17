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
		return result;
	}
	
	
	
	
	
}
