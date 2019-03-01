package cn.com.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbBean {
	private Statement stmt=null;
	private Connection conn=null;
	ResultSet rs=null;
	public DbBean(){}
	public void openConnection(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
    		String url="jdbc:mysql://localhost:3306/finaldesign?useUnicode=true&characterEncoding=UTF-8";
    		String user="root";
    		String password="1234";
   			conn=DriverManager.getConnection(url,user,password);
		}
		catch (ClassNotFoundException e) {
			System.err.println(e.getMessage());
		}
		catch (SQLException e) {
			System.err.println(e.getMessage());
		}
		catch (Exception e) {
			System.err.println(e.getMessage());
		}
	}
	//sql查询类语句
	public ResultSet executeQuery(String sql){
		rs=null;
		try {
			stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
			rs=stmt.executeQuery(sql);
		} catch (SQLException e) {
			System.err.println(e.getMessage());
		}
		return rs;
	}
	//sql更新语句
	public int executeUpdate(String sql){
		int n=0;
		try {
			stmt=conn.createStatement();
			n=stmt.executeUpdate(sql);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return n;
	}
	//关闭连接
	public void closeConnection(){
		try {
			if(rs!=null){
				rs.close();
			}
		} catch (SQLException e) {
			System.err.println(e.getMessage());
		}
		
		try {
			if(stmt!=null){
				stmt.close();
			}
		} catch (SQLException e) {
			System.err.println(e.getMessage());
		}
		
		try {
			if(conn!=null){
				conn.close();
			}
		} catch (SQLException e) {
			System.err.println(e.getMessage());
		}
	}
}
