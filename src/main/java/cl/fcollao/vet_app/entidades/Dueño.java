package cl.fcollao.vet_app.entidades;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="dueño")
@PrimaryKeyJoinColumn(name = "id")
public class Dueño extends Usuario {
	
    private String direccion;
    private String telefono;
    
	public String getDirección() {
		return direccion;
	}
	public void setDirección(String direccion) {
		this.direccion = direccion;
	}
	public String getNúmero_de_teléfono() {
		return telefono;
	}
	public void setNúmero_de_teléfono(String telefono) {
		this.telefono = telefono;
	}
	
	@Override
	public String toString() {
		return "Dueño [direccion=" + direccion + ", telefono=" + telefono + "]";
	}
	
	
    
}