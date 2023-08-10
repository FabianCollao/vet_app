package cl.fcollao.vet_app.servicios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import cl.fcollao.vet_app.entidades.Cita;

@Service
public class CitaServicio extends CrudAbstract<Cita, Integer>  {

	public CitaServicio(JpaRepository<Cita, Integer> repositorio) {
		super(repositorio);
		// TODO Auto-generated constructor stub
	}

}
