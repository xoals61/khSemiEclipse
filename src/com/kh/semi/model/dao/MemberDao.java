package com.kh.semi.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.kh.semi.model.vo.Member;

import static com.kh.semi.common.JDBCTemplate.close;
public class MemberDao {

	public int MemberSignUp(Connection conn, Member m) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO USRINFO VALUES(?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getUserId());
			pstmt.setString(2, m.getUserPwd());
			pstmt.setString(3, m.getUserName());
			pstmt.setString(4, m.getEmail());
			pstmt.setString(5, m.getAddress());
			
			result=pstmt.executeUpdate();
			
			
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

}
