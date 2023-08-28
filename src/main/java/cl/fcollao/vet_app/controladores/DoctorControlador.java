package cl.fcollao.vet_app.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cl.fcollao.vet_app.entidades.Mascota;
import cl.fcollao.vet_app.servicios.DoctorVetServicio;
import cl.fcollao.vet_app.servicios.MascotaServicio;

@Controller
public class DoctorControlador {
	
	@Autowired
	private DoctorVetServicio doctServ;
	
	@Autowired
	private MascotaServicio mascServ;
	
	@RequestMapping(value = "/principal", method = RequestMethod.GET)
    public ModelAndView webPrincipal() {
        return new ModelAndView("principal");
    }
	
	@RequestMapping(value = "/agenda", method = RequestMethod.GET)
    public ModelAndView webAgenda() {
        return new ModelAndView("agenda");
    }
	@RequestMapping(value = "/notificaciones", method = RequestMethod.GET)
    public ModelAndView webNotificaciones() {
        return new ModelAndView("notificaciones");
    }
	@RequestMapping(value = "/pacientes", method = RequestMethod.GET)
    public ModelAndView webPacientes() {
		List<Mascota> listaPacientes = mascServ.obtenerMascotas();
        return new ModelAndView("pacientes","listaPacientes",listaPacientes);
    }
	@RequestMapping(value = "/reporte", method = RequestMethod.GET)
    public ModelAndView webReporte() {
        return new ModelAndView("reporte");
    }
}
