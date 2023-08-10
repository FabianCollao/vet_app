package cl.fcollao.vet_app.entidades;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="vacuna")
public class Vacuna {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "mascota_id",referencedColumnName="id")
    private Mascota mascota;

    private String nombre;
    private LocalDate fecha;
    private boolean realizada;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Mascota getMascota() {
		return mascota;
	}
	public void setMascota(Mascota mascota) {
		this.mascota = mascota;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public LocalDate getFecha() {
		return fecha;
	}
	public void setFecha(LocalDate fecha) {
		this.fecha = fecha;
	}
	public boolean isRealizada() {
		return realizada;
	}
	public void setRealizada(boolean realizada) {
		this.realizada = realizada;
	}
	@Override
	public String toString() {
		return "Vacuna [id=" + id + ", mascota=" + mascota + ", nombre=" + nombre + ", fecha=" + fecha + ", realizada="
				+ realizada + "]";
	}

    
}