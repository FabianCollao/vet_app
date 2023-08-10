package cl.fcollao.vet_app.entidades;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

@Entity
@Table(name="usuario")
@Inheritance(strategy = InheritanceType.JOINED)
public class Usuario {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String user;
    private String password;
    private String correo;
    @Enumerated(EnumType.STRING)
    private RolUsuario rol;
    
	public Usuario(int id, String user, String password, String correo, RolUsuario rol) {
		super();
		this.id = id;
		this.user = user;
		this.password = password;
		this.correo = correo;
		this.rol = rol;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public RolUsuario getRol() {
		return rol;
	}
	public void setRol(RolUsuario rol) {
		this.rol = rol;
	}
	@Override
	public String toString() {
		return "Usuario [id=" + id + ", user=" + user + ", password=" + password + ", correo=" + correo + ", rol=" + rol
				+ "]";
	}
    
    

    
}

