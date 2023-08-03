package cl.fcollao.vet_app.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.fcollao.vet_app.entidades.Vacuna;

public interface IVacunaRepositorio  extends JpaRepository<Vacuna,Integer>{

}
