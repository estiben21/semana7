package com.empresa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.empresa.entity.Empleado;

public interface EmpleadoRepository extends JpaRepository<Empleado, Integer>{

	@Query("select e from Empleado e where e.nombres =?1 and e.apellidos = ?2")
	public List<Empleado> listaNombreApellidoIgual(String nombre,String apellido);
	
	@Query("select e from Empleado e where e.nombres like ?1 or e.apellidos like ?1")
	public List<Empleado> listaNombreApellidoLike(String filtro);
}
