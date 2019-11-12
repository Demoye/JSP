package javaDao;

import java.sql.ResultSet;
import java.sql.SQLException;
import com.alibaba.druid.pool.DruidPooledConnection;
import java.sql.PreparedStatement;
import javaBean.userBean;

public class userDao {
	public  userBean login(DruidPooledConnection con,userBean user) throws SQLException {
		userBean resultUser=null;
		String sql="select * from user where name=? and password=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, user.getUsername());
		ps.setString(2, user.getPassword());
		ResultSet rs = ps.executeQuery();
		if(rs.next()) {
			resultUser = new userBean();
			resultUser.setUsername(rs.getString("name"));
			resultUser.setPassword(rs.getString("password"));
		}
		return resultUser;
		
	}
}
