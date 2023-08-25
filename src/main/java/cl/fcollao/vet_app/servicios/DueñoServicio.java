package cl.fcollao.vet_app.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.fcollao.vet_app.entidades.Dueño;
import cl.fcollao.vet_app.repositorios.IDueñoRepositorio;

@Service
public class DueñoServicio{
	
	@Autowired
	private IDueñoRepositorio dueñoRepo;
	
	public DueñoServicio() {
		super();
	}
	
	public List<Dueño> obtenerDueños(){
		return dueñoRepo.findAll();
	}
	
	public Dueño obtenerDueño(int id) {
		return dueñoRepo.findById(id).get();
	}
	
	public void crearDueño(Dueño dueño) {
		dueñoRepo.save(dueño);
	}
	
	public void actualizar(Dueño dueño) {
		dueñoRepo.save(dueño);
	}
	
	public void borrarDueño(int id) {
		dueñoRepo.delete(dueñoRepo.getOne(id));
	}
}
