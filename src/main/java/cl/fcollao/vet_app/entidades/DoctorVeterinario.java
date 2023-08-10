package cl.fcollao.vet_app.entidades;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="doctor_veterinario")
@PrimaryKeyJoinColumn(name = "id")
public class DoctorVeterinario extends Usuario {
	
	private String nombres;
	@Column(name="apellido_paterno")
	private String apellidoPaterno;
    private String especialidad;
    private Integer experiencia;
    
    
	public DoctorVeterinario(int id, String user, String password, String correo, RolUsuario rol, String nombres,
			String apellidoPaterno, String especialidad, Integer experiencia) {
		super(id, user, password, correo, rol);
		this.nombres = nombres;
		this.apellidoPaterno = apellidoPaterno;
		this.especialidad = especialidad;
		this.experiencia = experiencia;
	}
	
	/**
	 * @return the nombres
	 */
	public String getNombres() {
		return nombres;
	}
	/**
	 * @param nombres the nombres to set
	 */
	public void setNombres(String nombres) {
		this.nombres = nombres;
	}
	/**
	 * @return the apellidoPaterno
	 */
	public String getApellidoPaterno() {
		return apellidoPaterno;
	}
	/**
	 * @param apellidoPaterno the apellidoPaterno to set
	 */
	public void setApellidoPaterno(String apellidoPaterno) {
		this.apellidoPaterno = apellidoPaterno;
	}
	/**
	 * @return the especialidad
	 */
	public String getEspecialidad() {
		return especialidad;
	}
	/**
	 * @param especialidad the especialidad to set
	 */
	public void setEspecialidad(String especialidad) {
		this.especialidad = especialidad;
	}
	/**
	 * @return the experiencia
	 */
	public Integer getExperiencia() {
		return experiencia;
	}
	/**
	 * @param experiencia the experiencia to set
	 */
	public void setExperiencia(Integer experiencia) {
		this.experiencia = experiencia;
	}
	@Override
	public String toString() {
		return "DoctorVeterinario [nombres=" + nombres + ", apellidoPaterno=" + apellidoPaterno + ", especialidad="
				+ especialidad + ", experiencia=" + experiencia + "]";
	}
    
    
}
