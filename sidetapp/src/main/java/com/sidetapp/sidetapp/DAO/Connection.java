package com.sidetapp.sidetapp.DAO;

import java.sql.DriverManager;
import java.sql.SQLException;

public class Connection {
	
	static String name_bd = "sidetapp";
	static String user_bd = "root";
	static String pass = "";
	static String url_bd = "jdbc:mysql://localhost:3306/sidetapp" + name_bd;
	
	java.sql.Connection connect = null;
	
	public Connection() {
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			connect = DriverManager.getConnection(url_bd, user_bd, pass);
			
			if(connect != null) {
				System.out.println("Conexión a base de datos " + name_bd + "Ok\n");
			}
			
		} catch (SQLException e) {
			System.out.println("Error en la base de datos " + name_bd);
		} catch (ClassNotFoundException e) {
			System.out.println("Error en la carga de clases");
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}
	
	public java.sql.Connection getConnection() {
		return connect;
	}
	
	public void disconnect() {
		connect = null;
	}
	

}
