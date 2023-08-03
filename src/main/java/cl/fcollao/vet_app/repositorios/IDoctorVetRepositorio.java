package cl.fcollao.vet_app.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.fcollao.vet_app.entidades.DoctorVeterinario;


public interface IDoctorVetRepositorio extends JpaRepository<DoctorVeterinario,Integer>{

}
