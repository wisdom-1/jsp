package chap04.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import chap04.dto.Login;

public class LoginDAO {

	// DAO : Data Access Object
	//	- DB의 테이블에 접근하는 객체들을 DAO라고 분류한다
	//	- DAO는 보통 테이블(혹은 뷰)당 한 클래스를 생성한다
	//	- 해당 테이블에 대한 원하는 형태의 SELECT/INSERT/DELETE/UPDATE를 
	//	    수행하는 메서드를 이곳에 정의한다
	
	public static Login read(Connection conn, String user_id) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("SELECT * FROM my_login WHERE user_id=?");			
			pstmt.setString(1, user_id);			
			rs = pstmt.executeQuery();
			
			if (rs.next()) 
				return new Login(rs);			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
			} catch (SQLException e) {}
		}
		
		return null;
	}
	
}





