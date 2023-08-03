package cl.fcollao.vet_app.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.fcollao.vet_app.entidades.HistorialClinico;

public interface IHistorialClinicoRepositorio  extends JpaRepository<HistorialClinico,Integer>{

}
