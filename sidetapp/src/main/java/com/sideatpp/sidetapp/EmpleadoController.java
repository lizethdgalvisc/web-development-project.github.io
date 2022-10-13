package com.sideatpp.sidetapp;

import java.util.ArrayList;

import com.sidetapp.sidetapp.DTO.EmpleadoVO;
@RestController

public class EmpleadoController {
	
	@PostMapping("/registrarempleado")
	public void registrarEmpleado(EmpleadoVO empleado) {
		EmpleadoDAO Dao = new EmpleadoDAO();
				Dao.registrarCliente(empleado);
	}
	

	
	
	
}
