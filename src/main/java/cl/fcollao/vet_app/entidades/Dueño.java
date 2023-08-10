package cl.fcollao.vet_app.entidades;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="dueño")
@PrimaryKeyJoinColumn(name = "id")
public class Dueño extends Usuario {
	
	

	private String nombres;
	@Column(name="apellido_paterno")
	private String apellidoPaterno;
    private String direccion;
    private int telefono;
    
    public Dueño(int id, String user, String password, String correo, RolUsuario rol) {
		super(id, user, password, correo, rol);
		// TODO Auto-generated constructor stub
	}
    
	public String getNombres() {
		return nombres;
	}
	public void setNombres(String nombres) {
		this.nombres = nombres;
	}
	public String getApellidoPaterno() {
		return apellidoPaterno;
	}
	public void setApellidoPaterno(String apellidoPaterno) {
		this.apellidoPaterno = apellidoPaterno;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public int getTelefono() {
		return telefono;
	}
	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}
	
	@Override
	public String toString() {
		return "Dueño [nombres=" + nombres + ", apellidoPaterno=" + apellidoPaterno + ", direccion=" + direccion
				+ ", telefono=" + telefono + "]";
	}
    
	
	
    
}