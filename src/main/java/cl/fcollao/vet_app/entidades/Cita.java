package cl.fcollao.vet_app.entidades;


import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="cita")
public class Cita {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private LocalDateTime fecha;
    
    @Column(name="motivo_consulta")
    private String motivoConsulta;

    @ManyToOne
    @JoinColumn(name = "mascota_id",referencedColumnName="id")
    private Mascota mascota;

    @ManyToOne
    @JoinColumn(name = "doctor_id",referencedColumnName="id")
    private DoctorVeterinario doctor;

    @Enumerated(EnumType.STRING)
    private EstadoCita estado;

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the fecha
	 */
	public LocalDateTime getFecha() {
		return fecha;
	}

	/**
	 * @param fecha the fecha to set
	 */
	public void setFecha(LocalDateTime fecha) {
		this.fecha = fecha;
	}

	/**
	 * @return the motivoConsulta
	 */
	public String getMotivoConsulta() {
		return motivoConsulta;
	}

	/**
	 * @param motivoConsulta the motivoConsulta to set
	 */
	public void setMotivoConsulta(String motivoConsulta) {
		this.motivoConsulta = motivoConsulta;
	}

	/**
	 * @return the mascota
	 */
	public Mascota getMascota() {
		return mascota;
	}

	/**
	 * @param mascota the mascota to set
	 */
	public void setMascota(Mascota mascota) {
		this.mascota = mascota;
	}

	/**
	 * @return the doctor
	 */
	public DoctorVeterinario getDoctor() {
		return doctor;
	}

	/**
	 * @param doctor the doctor to set
	 */
	public void setDoctor(DoctorVeterinario doctor) {
		this.doctor = doctor;
	}

	/**
	 * @return the estado
	 */
	public EstadoCita getEstado() {
		return estado;
	}

	/**
	 * @param estado the estado to set
	 */
	public void setEstado(EstadoCita estado) {
		this.estado = estado;
	}

	@Override
	public String toString() {
		return "Cita [id=" + id + ", fecha=" + fecha + ", motivoConsulta=" + motivoConsulta + ", mascota=" + mascota
				+ ", doctor=" + doctor + ", estado=" + estado + "]";
	}
    
    
    
}