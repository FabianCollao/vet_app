package cl.fcollao.vet_app.servicios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import cl.fcollao.vet_app.entidades.Mascota;


@Service
public class MascotaServicio extends CrudAbstract<Mascota, Integer>  {

	public MascotaServicio(JpaRepository<Mascota, Integer> repositorio) {
		super(repositorio);
		// TODO Auto-generated constructor stub
	}

}
