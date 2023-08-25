package cl.fcollao.vet_app.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.fcollao.vet_app.entidades.Cita;
import cl.fcollao.vet_app.repositorios.ICitaRepositorio;

@Service
public class CitaServicio {
	
	public CitaServicio() {
		super();
	}
	@Autowired
	private ICitaRepositorio citaRepo;

	public List<Cita> obtenerCitas(){
		return citaRepo.findAll();
	}
	
	public Cita obtenerCita(int id) {
		return citaRepo.findById(id).get();
	}
	
	public void crearCita(Cita cita) {
		citaRepo.save(cita);
	}
	
	public void actualizar(Cita cita) {
		citaRepo.save(cita);
	}
	
	public void borrarCita(int id) {
		citaRepo.delete(citaRepo.getOne(id));
	}
}
