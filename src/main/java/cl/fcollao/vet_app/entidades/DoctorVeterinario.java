package cl.fcollao.vet_app.entidades;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="doctor_veterinario")
@PrimaryKeyJoinColumn(name = "id")
public class DoctorVeterinario extends Usuario {
	
    private String especialidad;
    private Integer experiencia;
    
	public String getEspecialidad() {
		return especialidad;
	}
	public void setEspecialidad(String especialidad) {
		this.especialidad = especialidad;
	}
	public Integer getExperiencia() {
		return experiencia;
	}
	public void setExperiencia(Integer experiencia) {
		this.experiencia = experiencia;
	}
	
	@Override
	public String toString() {
		return "DoctorVeterinario [especialidad=" + especialidad + ", experiencia=" + experiencia + "]";
	}
    
}
