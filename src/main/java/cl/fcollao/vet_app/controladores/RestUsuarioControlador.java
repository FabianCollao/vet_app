package cl.fcollao.vet_app.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cl.fcollao.vet_app.entidades.Cita;
import cl.fcollao.vet_app.entidades.DoctorVeterinario;
import cl.fcollao.vet_app.entidades.Dueño;
import cl.fcollao.vet_app.entidades.HistorialClinico;
import cl.fcollao.vet_app.entidades.Mascota;
import cl.fcollao.vet_app.entidades.Usuario;
import cl.fcollao.vet_app.entidades.Vacuna;
import cl.fcollao.vet_app.servicios.CitaServicio;
import cl.fcollao.vet_app.servicios.DoctorVetServicio;
import cl.fcollao.vet_app.servicios.DueñoServicio;
import cl.fcollao.vet_app.servicios.HistorialCliServicio;
import cl.fcollao.vet_app.servicios.MascotaServicio;
import cl.fcollao.vet_app.servicios.UsuarioServicio;
import cl.fcollao.vet_app.servicios.VacunaServicio;

@RestController
public class RestUsuarioControlador {

	@Autowired
	UsuarioServicio usu ;
	
	@Autowired
	CitaServicio cita;
	
	@Autowired
	DoctorVetServicio doct;
	
	@Autowired
	HistorialCliServicio hist;
	
	@Autowired
	MascotaServicio masc;
	
	@Autowired
	VacunaServicio vac;
	
	@Autowired
	DueñoServicio due;
	
	@RequestMapping(value="/api/usuarios",headers="Accept=application/json")
	public List<Usuario> obtenerUsuarios(){
		return usu.obtenerUsuarios();
	}

	@RequestMapping(value="/api/usuarios/{id}", headers="Accept=application/json")
	public Usuario getUsuario(@PathVariable("id") int id){
		return usu.obtenerUsuario(id);
	}
	
	//Vacunas
	@RequestMapping(value="/api/vacunas",headers="Accept=application/json")
	public List<Vacuna> obtenerVacunas(){
		return vac.obtenerVacunas();
	}
	
	//
	@RequestMapping(value="/api/mascotas",headers="Accept=application/json")
	public List<Mascota> obtenerMascotas(){
		return masc.obtenerMascotas();
	}
	//
	@RequestMapping(value="/api/doctores",headers="Accept=application/json")
	public List<DoctorVeterinario> obtenerDoctores(){
		return obtenerDoctores();
	}
	//
	@RequestMapping(value="/api/dueños",headers="Accept=application/json")
	public List<Dueño> obtenerDueños(){
		return due.obtenerDueños();
	}
	//
	@RequestMapping(value="/api/historiales",headers="Accept=application/json")
	public List<HistorialClinico> obtenerHistoriales(){
		return hist.obtenerHistorialClinicos();
	}
	//
	@RequestMapping(value="/api/citas",headers="Accept=application/json")
	public List<Cita> obtenerCitas(){
		return cita.obtenerCitas();
	}
}
