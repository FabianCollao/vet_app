package cl.fcollao.vet_app.servicios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import cl.fcollao.vet_app.entidades.Dueño;

@Service
public class DueñoServicio  extends CrudAbstract<Dueño, Integer>  {

	public DueñoServicio(JpaRepository<Dueño, Integer> repositorio) {
		super(repositorio);
		// TODO Auto-generated constructor stub
	}

}
