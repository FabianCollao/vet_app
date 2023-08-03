package cl.fcollao.vet_app.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cl.fcollao.vet_app.entidades.Usuario;
import cl.fcollao.vet_app.repositorios.IUsuarioRepositorio;
import cl.fcollao.vet_app.servicios.UsuarioServicio;

@RestController
public class RestUsuarioControlador {

	@Autowired
	UsuarioServicio usu ;
	
	@RequestMapping(value="/api/usuarios",headers="Accept=application/json")
	public List<Usuario> obtenerUsuarios(){
		return usu.getAll();
	}

	@RequestMapping(value="/api/usuarios/{id}", headers="Accept=application/json")
	public Usuario getUsuario(@PathVariable("id") int id){
		return usu.getOne(id);
	}
}
