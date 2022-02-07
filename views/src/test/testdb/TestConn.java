package test.testdb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TestConn {
	public static Connection getconnection() throws SQLException, ClassNotFoundException {
		
		Connection conn = null;
		
		String jdbcDriver = "com.mysql.cj.jdbc.Driver";
		String jdbcUrl = "jdbc:mysql://localhost:3306/Test?servertimezone=UTC"; 
		String dbuser = "root";
		String dbpwd = "1234";
		
		Class.forName(jdbcDriver);
		conn = DriverManager.getConnection(jdbcUrl, dbuser, dbpwd);
		
		return conn;
		
	}

}
