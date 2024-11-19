//package DBPKG;
//
//import java.sql.*;
//
//public class Util {
//	public static Connection getConnection() throws Exception {
//		Class.forName("oracle.jdbc.OracleDriver");
//		Connection con = DriverManager.getConnection
//				("jdbc:oracle:thin:@//localhost:1521/xe","system","1234" );
//		return con;
//	}
//}
package DBPKG;

import java.sql.*;

public class Util {
    public static Connection getConnection() throws Exception {
        // JDBC 드라이버 로드
        Class.forName("oracle.jdbc.OracleDriver");
        
        // 데이터베이스 연결 URL
        String url = "jdbc:oracle:thin:@localhost:1521:xe"; // xe는 서비스 이름입니다.
        
        // 데이터베이스 연결
        Connection con = DriverManager.getConnection(url, "system", "1234");
        
        return con;
    }
}
