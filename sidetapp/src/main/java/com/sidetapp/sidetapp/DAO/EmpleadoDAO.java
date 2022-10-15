package com.sidetapp.sidetapp.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import com.sidetapp.sidetapp.DTO.EmpleadoVO;

public class EmpleadoDAO {
	
	public void registrarEmpleado(EmpleadoVO empleado) {
		
		Connection link = new Connection();
		
		try {
			
			Statement stmt = link.getConnection().createStatement();
			
			String sent ="INSERT INTO empleado VALUES("
					+ empleado.getDni_empleado() + "," + "'"
					+ empleado.getContrasena_empleado() + "," + "'"
					+ empleado.getNombre_empleado() + "," + "'"
					+ empleado.getFecha_nacimiento_empleado() + "," + "'"
					+ empleado.getCategoria_empleado() + "," + "'"
					+ empleado.getHabilidades_empleado() + "," + "'"
					+ empleado.getCiudad_empleado() + "," + "'"
					+ empleado.getDireccion_empleado() + "," + "'"
					+ empleado.getDisponibilidad_empleado() + "," + "'"
					+ empleado.getCalificacion_empleado() + "," + "'"
					+ ");";
			
			stmt.executeUpdate(sent);
			System.out.println("Registrado " + sent);
			stmt.close();
			link.disconnect();
			
			
		} catch (SQLException e) {			
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar el cliente");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {			
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar el cliente");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}
	
	
	public ArrayList<EmpleadoVO> seleccionarEmpleado (String empleado){
		
		ArrayList<EmpleadoVO> selempleado = new ArrayList<EmpleadoVO>();
		
		Connection connect = new Connection();
		
		try {
			
						
		} catch (Exception e) {
			// TODO: handle exception
		}
		return selempleado;
		
		
	}
	
}
