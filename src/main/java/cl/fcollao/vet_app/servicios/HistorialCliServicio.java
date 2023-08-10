package cl.fcollao.vet_app.servicios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import cl.fcollao.vet_app.entidades.HistorialClinico;

@Service
public class HistorialCliServicio extends CrudAbstract<HistorialClinico, Integer> {

	public HistorialCliServicio(JpaRepository<HistorialClinico, Integer> repositorio) {
		super(repositorio);
		// TODO Auto-generated constructor stub
	}

}
