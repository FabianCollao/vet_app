package cl.fcollao.vet_app.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.fcollao.vet_app.entidades.Mascota;
import cl.fcollao.vet_app.repositorios.IMascotaRepositorio;


@Service
public class MascotaServicio {
	
	@Autowired
	private IMascotaRepositorio mascRepo;
	
	public MascotaServicio() {
		super();
	}

	public List<Mascota> obtenerMascotas(){
		return mascRepo.findAll();
	}
	
	public Mascota obtenerMascota(int id) {
		return mascRepo.findById(id).get();
	}
	
	public void crearMascota(Mascota mascota) {
		mascRepo.save(mascota);
	}
	
	public void actualizar(Mascota mascota) {
		mascRepo.save(mascota);
	}
	
	public void borrarMascota(int id) {
		mascRepo.delete(mascRepo.getOne(id));
	}
}
