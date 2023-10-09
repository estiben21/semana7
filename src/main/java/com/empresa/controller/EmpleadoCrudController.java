package com.empresa.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.empresa.entity.Empleado;
import com.empresa.service.EmpleadoService;
import com.empresa.util.FunctionUtil;

@Controller
public class EmpleadoCrudController {

	@Autowired
	private EmpleadoService empleadoService;
	
	@GetMapping(value = "/verCrudEmpleado")
	public String verEmpleado() {return "crudEmpleado";}
	
	@GetMapping(value = "/consultaCrudEmpleado")
	@ResponseBody
	public List<Empleado> consulta(String filtro){
		return empleadoService.listaPorNombreApellidoLike("%"+filtro+"%");
	}
	
	@ResponseBody
	@GetMapping(value = "/buscaEmpleadoMayorEdad")
	public String busca(String fechaNacimiento) {
		if(FunctionUtil.isMayorEdad(fechaNacimiento)) {
			return "{\"valid\":true}";
		}else {
			return "{\"valid\":false}";
		}
	}
	
	
	@PostMapping("/registraCrudEmpleado")
	@ResponseBody
	public Map<?, ?> registra(Empleado obj) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		obj.setEstado(1);
		obj.setFechaRegistro(new Date());
		obj.setFechaActualizacion(new Date());
		
		List<Empleado> lstSalida = empleadoService.
						listaPorNombreApellidoIgual(
								obj.getNombres(), 
								obj.getApellidos());
		if (!CollectionUtils.isEmpty(lstSalida)) {
			map.put("mensaje", "El empleado " + obj.getNombres() + " " + obj.getApellidos() + " ya existe");
			return map;
		}
		
		Empleado objSalida = empleadoService.insertaEmpleado(obj);
		if (objSalida == null) {
			map.put("mensaje", "Error en el registro");
		} else {
			List<Empleado> lista = empleadoService.listaPorNombreApellidoLike("%");
			map.put("lista", lista);
			map.put("mensaje", "Registro exitoso");
		}
		return map;
	}
	
	@PostMapping("/actualizaCrudEmpleado")
	@ResponseBody
	public Map<?, ?> actualiza(Empleado obj) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		  
		Optional<Empleado> optEmpleado= empleadoService.buscaEmpleado(obj.getIdEmpleado());
		obj.setFechaRegistro(optEmpleado.get().getFechaRegistro());
		obj.setFechaActualizacion(optEmpleado.get().getFechaActualizacion());
		obj.setEstado(optEmpleado.get().getEstado());
		Empleado objSalida = empleadoService.actualizaEmpleado(obj);
		if (objSalida == null) {
			map.put("mensaje", "Error en actualizar");
		} else {
			List<Empleado> lista = empleadoService.listaPorNombreApellidoLike("%");
			map.put("lista", lista);
			map.put("mensaje", "Actualización exitosa");
		}
		return map;
	}
	
	@ResponseBody
	@PostMapping("/eliminaCrudEmpleado")
	public Map<?, ?> elimina(int id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		Empleado objEmpleado= empleadoService.buscaEmpleado(id).get();  
		objEmpleado.setEstado( objEmpleado.getEstado() == 1 ? 0 : 1);
		Empleado objSalida = empleadoService.actualizaEmpleado(objEmpleado);
		if (objSalida == null) {
			map.put("mensaje", "Error en actualizar");
		} else {
			List<Empleado> lista = empleadoService.listaPorNombreApellidoLike("%");
			map.put("lista", lista);
		}
		return map;
	}
}