/**
 * 
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * @author aly_d
 *
 */
public class MyConnecte {
	public static Connection getConnect() {
		Connection myConnection = null;
		
		String url = "jdbc:mysql://localhost/";
		String dbName = "nationofmanga";
		String user = "root";
		String password = "";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			myConnection = DriverManager.getConnection(url+dbName,user,password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return myConnection;
	}
}
