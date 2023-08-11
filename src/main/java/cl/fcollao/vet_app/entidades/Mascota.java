package cl.fcollao.vet_app.entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="mascota")
public class Mascota {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String nombre;
    private String especie;
    private String raza;
    private String edad;
    private String genero;

    @ManyToOne
    @JoinColumn(name = "dueño_id")
    private Dueño dueño;

    public Mascota() {
    	
    }
	public Mascota(int id, String nombre, String especie, String raza, String edad, String genero, Dueño dueño) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.especie = especie;
		this.raza = raza;
		this.edad = edad;
		this.genero = genero;
		this.dueño = dueño;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getEspecie() {
		return especie;
	}

	public void setEspecie(String especie) {
		this.especie = especie;
	}

	public String getRaza() {
		return raza;
	}

	public void setRaza(String raza) {
		this.raza = raza;
	}

	public String getEdad() {
		return edad;
	}

	public void setEdad(String edad) {
		this.edad = edad;
	}

	public String getgenero() {
		return genero;
	}

	public void setgenero(String genero) {
		this.genero = genero;
	}

	public Dueño getDueño() {
		return dueño;
	}

	public void setDueño(Dueño dueño) {
		this.dueño = dueño;
	}

	@Override
	public String toString() {
		return "Mascota [id=" + id + ", nombre=" + nombre + ", especie=" + especie + ", raza=" + raza + ", edad=" + edad
				+ ", genero=" + genero + ", dueño=" + dueño + "]";
	}

    
}
