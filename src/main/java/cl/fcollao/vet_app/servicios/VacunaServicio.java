package cl.fcollao.vet_app.servicios;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.fcollao.vet_app.entidades.Vacuna;

public class VacunaServicio  extends CrudAbstract<Vacuna, Integer> {

	public VacunaServicio(JpaRepository<Vacuna, Integer> repositorio) {
		super(repositorio);
		// TODO Auto-generated constructor stub
	}

}