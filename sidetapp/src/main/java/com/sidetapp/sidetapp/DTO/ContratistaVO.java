package com.sidetapp.sidetapp.DTO;

import java.io.Serializable;

public class ContratistaVO implements Serializable {
	
	private static final long serialVersionUID = 1L;

	private Integer identificacion_contratista;
	private Integer contacto_contratista;
	private Integer calificacion_contratista;
	private String nombre_contratista;
	private String tipo_contratista;
	private String ciudad_contratista;
	private String categoria_contratista;
	private String disponibilidad_contratista;
	
	/*
	 *@return the identificacion_contratista 
	 **/
	public Integer getIdentificacion_contratista() {
		return identificacion_contratista;
	}
	
	/*
	 * @param identificacion_contratista the identificacion_contratista to set
	 **/	
	public void setIdentificacion_contratista(Integer identificacion_contratista) {
		this.identificacion_contratista = identificacion_contratista;
	}
	
	/*
	 * @return the contacto_contratista  
	 **/
	public Integer getContacto_contratista() {
		return contacto_contratista;
	}
	
	/*
	 * @param contacto_contratista the contacto_contratista to set
	 **/
	public void setContacto_contratista(Integer contacto_contratista) {
		this.contacto_contratista = contacto_contratista;
	}
	/*
	 * @return the calificacion_contratista  
	 **/
	public Integer getCalificacion_contratista() {
		return calificacion_contratista;
	}
	
	/*
	 * @param calificacion_contratista the calificacion_contratista to set
	 **/
	public void setCalificacion_contratista(Integer calificacion_contratista) {
		this.calificacion_contratista = calificacion_contratista;
	}
	/*
	 * @return the nombre_contratista  
	 **/
	public String getNombre_contratista() {
		return nombre_contratista;
	}
	
	/*
	 * @param nombre_contratista the nombre_contratista to set
	 **/
	public void setNombre_contratista(String nombre_contratista) {
		this.nombre_contratista = nombre_contratista;
	}
	/*
	 * @return the tipo_contratista  
	 **/
	public String getTipo_contratista() {
		return tipo_contratista;
	}
	
	/*
	 * @param tipo_contratista the tipo_contratista to set
	 **/
	public void setTipo_contratista(String tipo_contratista) {
		this.tipo_contratista = tipo_contratista;
	}
	/*
	 * @return the ciudad_contratista  
	 **/
	public String getCiudad_contratista() {
		return ciudad_contratista;
	}
	
	/*
	 * @param ciudad_contratista the ciudad_contratista to set
	 **/
	public void setCiudad_contratista(String ciudad_contratista) {
		this.ciudad_contratista = ciudad_contratista;
	}
	/*
	 * @return the categoria_contratista  
	 **/
	public String getCategoria_contratista() {
		return categoria_contratista;
	}
	
	/*
	 * @param categoria_contratista the categoria_contratista to set
	 **/
	public void setCategoria_contratista(String categoria_contratista) {
		this.categoria_contratista = categoria_contratista;
	}
	
	/*
	 * @return the disponibilidad_contratista  
	 **/
	public String getDisponibilidad_contratista() {
		return disponibilidad_contratista;
	}
	
	/*
	 * @param disponibilidad_contratista the disponibilidad_contratista to set
	 **/
	public void setDisponibilidad_contratista(String disponiblidad_contratista) {
		this.disponibilidad_contratista = disponiblidad_contratista;
	}

}
