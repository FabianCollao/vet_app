package cl.fcollao.vet_app.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.fcollao.vet_app.entidades.HistorialClinico;
import cl.fcollao.vet_app.repositorios.IHistorialClinicoRepositorio;

@Service
public class HistorialCliServicio {
	
	@Autowired
	private IHistorialClinicoRepositorio histRepo;
	
	public HistorialCliServicio() {
		super();
	}

	public List<HistorialClinico> obtenerHistorialClinicos(){
		return histRepo.findAll();
	}
	
	public HistorialClinico obtenerHistorialClinico(int id) {
		return histRepo.findById(id).get();
	}
	
	public void crearHistorialClinico(HistorialClinico historial) {
		histRepo.save(historial);
	}
	
	public void actualizar(HistorialClinico historial) {
		histRepo.save(historial);
	}
	
	public void borrarHistorialClinico(int id) {
		histRepo.delete(histRepo.getOne(id));
	}

}
