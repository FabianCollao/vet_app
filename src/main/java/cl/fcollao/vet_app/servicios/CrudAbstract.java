package cl.fcollao.vet_app.servicios;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public abstract class CrudAbstract<T,ID>{
	
	protected JpaRepository<T, ID> repo;
	
	public CrudAbstract(JpaRepository<T,ID> repositorio){
		repo= repositorio;
	}
	
	public T save(T entidad) {
		return repo.save(entidad);
	}
	
	public T update(T entidad) {
		return repo.save(entidad);
	}
	
	public List<T> getAll(){
		return repo.findAll();
	}
	
	public T getOne(ID id) {
		return repo.findById(id).get();
	}
	public void delete(ID id) {
		repo.deleteById(id);
	}
}
