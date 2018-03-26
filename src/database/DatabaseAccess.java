package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.amazonaws.services.dynamodbv2.xspec.S;

import login.Auth;

public class DatabaseAccess {

	public void insert(String query){
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://cloudservices.ctbf4prydwjd.us-west-2.rds.amazonaws.com:3306/CloudServices?useSSL=false","sandeshalse","crusaders");
		Statement st = con.createStatement();
		st.executeUpdate(query);
		
		st.close();
		con.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	public Auth auth(String query, String password){
		Auth a = new Auth();
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://cloudservices.ctbf4prydwjd.us-west-2.rds.amazonaws.com:3306/CloudServices?useSSL=false","sandeshalse","crusaders");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
		
		while(rs.next()){
			String password1 = rs.getString("user_password");
			int id = rs.getInt("user_id");
			String type = rs.getString("user_type");
				a.setType(type);
				a.setId(id);
				a.setPassword(password1);
			
		}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return a;
	}
	
	
}
