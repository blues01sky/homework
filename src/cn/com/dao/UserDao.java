package cn.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import cn.com.entity.User;
import cn.com.uitl.DbUitl;

public class UserDao {
	
	/*public static void main(String[] args) throws Exception {
		UserDao userDao=new UserDao();
		userDao.findByUsername("1234");
	}*/
	
	public User findByUsername(String username) throws Exception{
		User user = new User();
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs=null;
		try{
			conn = DbUitl.openConnection();
			String sql="select * from user where username=?";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1,username);
			rs = stmt.executeQuery();
			if(rs.next()){
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
			}
		}catch(Exception e){
				e.printStackTrace();
				throw e;
		}finally{
				DbUitl.closeConnection(conn);
		}
		return user;
	}
		public void save(User user) throws Exception{
			Connection conn=null;
			PreparedStatement stmt=null;
			try{
				conn = DbUitl.openConnection();
				String sql="insert into user values(null,?,?,null)";
				stmt=conn.prepareStatement(sql);
				stmt.setString(1,user.getUsername());
				stmt.setString(2,user.getPassword());
				stmt.execute();
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				throw e;
			}finally {
				DbUitl.closeConnection(conn);
			}
		}
		/*public static void main(String[] agrs) throws Exception {
			UserDao dao = new UserDao();
			dao.findByUsername("1234");
		}*/
	}
