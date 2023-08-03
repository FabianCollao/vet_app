package cl.fcollao.vet_app.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.fcollao.vet_app.entidades.Cita;

public interface ICitaRepositorio  extends JpaRepository<Cita,Integer> {

}
