package chap04.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import chap04.dto.Login;

public class LoginDAO {

	// DAO : Data Access Object
	//	- DB�� ���̺� �����ϴ� ��ü���� DAO��� �з��Ѵ�
	//	- DAO�� ���� ���̺�(Ȥ�� ��)�� �� Ŭ������ �����Ѵ�
	//	- �ش� ���̺� ���� ���ϴ� ������ SELECT/INSERT/DELETE/UPDATE�� 
	//	    �����ϴ� �޼��带 �̰��� �����Ѵ�
	
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





