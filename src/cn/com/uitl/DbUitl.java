package cn.com.uitl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DbUitl {
	
	private static Properties properties = new Properties();
	private static String driver = null;
	private static String url = null;
	private static String user = null;
	private static String pwd = null;
	
	
	static{
		try {
			properties.load(DbUitl.class.getClassLoader().getResourceAsStream("db.properties"));
			driver = properties.getProperty("jdbc.driver");
			url = properties.getProperty("jdbc.url");
			user = properties.getProperty("jdbc.user");
			pwd = properties.getProperty("jdbc.password");
			Class.forName(driver);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
	
	
	
	public static Connection openConnection() throws SQLException{
		return DriverManager.getConnection(url,user,pwd);
	}
	
	public static void closeConnection(Connection conn){
		if(conn != null){
			try {
				conn.close();
			} catch (Exception e) {
				System.out.println("关闭数据发生异常");
				// TODO: handle exception
			}
		}
		
	}
	
	
	/*	Connection conn = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/finaldesign?useUnicode=true&characterEncoding=utf-8","root","1234");
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("数据库连接失败");
		}
		return conn;
	}
	public static void close(Connection conn) throws Exception {
		if(conn !=null){
			try {
				conn.close();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				throw e;
			}
		}
	}*/
	/*public static void main(String[] args) throws Exception{
		openConnection();
	}*/
}
	
	