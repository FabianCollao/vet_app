package cl.fcollao.vet_app.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.fcollao.vet_app.entidades.Vacuna;
import cl.fcollao.vet_app.repositorios.IVacunaRepositorio;

@Service
public class VacunaServicio {

	@Autowired
	private IVacunaRepositorio vacRepo;
	
	public List<Vacuna> obtenerVacunas(){
		return vacRepo.findAll();
	}
	
	public Vacuna obtenerVacuna(int id) {
		return vacRepo.findById(id).get();
	}
	
	public void crearVacuna(Vacuna vac) {
		vacRepo.save(vac);
	}
	
	public void actualizar(Vacuna vac) {
		vacRepo.save(vac);
	}
	
	public void borrarVacuna(int id) {
		vacRepo.delete(vacRepo.getOne(id));
	}
}
