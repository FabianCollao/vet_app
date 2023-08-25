package cl.fcollao.vet_app.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.fcollao.vet_app.entidades.DoctorVeterinario;
import cl.fcollao.vet_app.repositorios.IDoctorVetRepositorio;

@Service
public class DoctorVetServicio {
	
	@Autowired
	private IDoctorVetRepositorio docRepo;
	
	public DoctorVetServicio(){
		super();
	}
	public List<DoctorVeterinario> obtenerDoctores(){
		return docRepo.findAll();
	}
	
	public DoctorVeterinario obtenerDoctor(int id) {
		return docRepo.findById(id).get();
	}
	
	public void crearDoctor(DoctorVeterinario doc) {
		docRepo.save(doc);
	}
	
	public void actualizar(DoctorVeterinario doc) {
		docRepo.save(doc);
	}
	
	public void borrarDoctor(int id) {
		docRepo.delete(docRepo.getOne(id));
	}
}
