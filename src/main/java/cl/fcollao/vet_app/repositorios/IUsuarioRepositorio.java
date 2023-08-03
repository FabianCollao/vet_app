package cl.fcollao.vet_app.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.fcollao.vet_app.entidades.Usuario;


public interface IUsuarioRepositorio extends JpaRepository<Usuario,Integer>{

}
