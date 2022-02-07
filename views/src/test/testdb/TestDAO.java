package test.testdb;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class TestDAO {
	
	private static TestDAO dao = new TestDAO();
	
	private TestDAO() {}
	private TestDAO getInstance() {return dao;}
	
	public int insertTestTable (TestVO testObj, Connection conn) {
		
		int resultCount = 0;
		
		try {
			String sql = "insert into TestTable values = (?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, testObj.getUserId());
			pstmt.setString(2, testObj.getUserPwd());
			
			resultCount = pstmt.executeUpdate();
			pstmt.close();
		}
		catch(SQLException e) {
			System.out.println("DAO TestTable insert error");
		}
		return resultCount;
	}
	
	

}
