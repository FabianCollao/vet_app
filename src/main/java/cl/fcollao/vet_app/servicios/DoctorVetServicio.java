package cl.fcollao.vet_app.servicios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import cl.fcollao.vet_app.entidades.DoctorVeterinario;

@Service
public class DoctorVetServicio extends CrudAbstract<DoctorVeterinario, Integer> {

	public DoctorVetServicio(JpaRepository<DoctorVeterinario, Integer> repositorio) {
		super(repositorio);
		// TODO Auto-generated constructor stub
	}

}
