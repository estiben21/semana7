package com.empresa.service;

import java.util.List;
import java.util.Optional;

import com.empresa.entity.Empleado;

public interface EmpleadoService {

	//Crud
	public abstract Empleado insertaEmpleado(Empleado obj);
	public abstract Empleado actualizaEmpleado(Empleado obj);
	public abstract List<Empleado> listaPorNombreApellidoLike(String filtro);
	public abstract Optional<Empleado> buscaEmpleado(int idEmpleado);
		
	//Validacion Registrar
	public abstract List<Empleado> listaPorNombreApellidoIgual(String nombre, String apellido); 
	
}
