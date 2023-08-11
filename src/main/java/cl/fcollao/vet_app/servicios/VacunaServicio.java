package cl.fcollao.vet_app.servicios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import cl.fcollao.vet_app.entidades.Vacuna;

@Service
public class VacunaServicio  extends CrudAbstract<Vacuna, Integer> {

	public VacunaServicio(JpaRepository<Vacuna, Integer> repositorio) {
		super(repositorio);
		// TODO Auto-generated constructor stub
	}

}
