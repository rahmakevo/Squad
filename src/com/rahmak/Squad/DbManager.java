/**
 * 
 */
package com.rahmak.Squad;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author rahmak
 *
 */
public class DbManager {

	/**
	 * @param args
	 */		
       // create a function to get a connection
		public Connection getConnection() {
			String connectionUrl = "jdbc:mysql://localhost:3306/Squad";
			Connection connection = null;
			try {
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				connection = DriverManager.getConnection(connectionUrl, "phpmyadmin", "rahma");
			} catch (InstantiationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return connection;
			
		}
		
		public void closeConnection(Connection connection) {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		public void create(Squad squad) {
			String sql = "insert into squad(name, password, age, weakness, strength) values(?, ?, ?, ?, ?)";
			
			Connection connection = getConnection();
			try {
				PreparedStatement statement = connection.prepareStatement(sql);
				statement.setString(1, squad.getName());
				statement.setString(2, squad.getPassword());
				statement.setInt(3, squad.getAge());
				statement.setInt(4, squad.getWeakness());
				statement.setInt(5, squad.getStrength());
				statement.execute();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				closeConnection(connection);
			}
		}
		
		
		public List<Squad> selectAll(){
			// create an empty List ARRAY
			List <Squad> heroes = new ArrayList<Squad>();
			
			String sql = "Select * from squad";
			Connection conn = getConnection();
			try {
				PreparedStatement statement = conn.prepareStatement(sql);
				ResultSet results = statement.executeQuery();
				while(results.next()) {
					int id = results.getInt("id");
					String name = results.getString("name");
					int age = results.getInt("age");
					int weakness = results.getInt("weakness");
					int strength = results.getInt("strength");
					Squad squad = new Squad(id, name, age, weakness, strength);
					heroes.add(squad);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				closeConnection(conn);
			}
			return heroes;
		}
		
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		DbManager db = new DbManager();
		Connection connection = db.getConnection();
		
		System.out.println(connection);
		db.closeConnection(connection);
	}

}
