package cl.fcollao.vet_app.servicios;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import cl.fcollao.vet_app.entidades.Usuario;
import cl.fcollao.vet_app.repositorios.IUsuarioRepositorio;

@Service
public class UsuarioServicio {
	
	public UsuarioServicio() {
		super();
	}
	
	@Autowired
	private IUsuarioRepositorio usuRepo;
	

	public List<Usuario> obtenerUsuarios(){
		return usuRepo.findAll();
	}
	public Usuario obtenerUsuario(int id){
		return usuRepo.findById(id).get();
	}
	
	public void borrarUsuario(int id) {
		usuRepo.delete(usuRepo.getOne(id));
	}
	
	public void actualizarUsuario(Usuario usu) {
		usuRepo.save(usu);
	}
	public void crearUsuario(Usuario usu) {
		usuRepo.save(usu);
	}
}
