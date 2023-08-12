package cl.fcollao.vet_app.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cl.fcollao.vet_app.servicios.DoctorVetServicio;

@Controller
public class DoctorControlador {

	private DoctorVetServicio doctServ;
	
	@RequestMapping(value = "/principal", method = RequestMethod.GET)
    public ModelAndView webPrincipal() {
        return new ModelAndView("doctor-principal");
    }
	
	@RequestMapping(value = "/agenda", method = RequestMethod.GET)
    public ModelAndView webAgenda() {
        return new ModelAndView("doctor-agenda");
    }
	@RequestMapping(value = "/notificaciones", method = RequestMethod.GET)
    public ModelAndView webNotificaciones() {
        return new ModelAndView("doctor-notificaciones");
    }
	@RequestMapping(value = "/pacientes", method = RequestMethod.GET)
    public ModelAndView webPacientes() {
        return new ModelAndView("doctor-pacientes");
    }
	@RequestMapping(value = "/reporte", method = RequestMethod.GET)
    public ModelAndView webReporte() {
        return new ModelAndView("doctor-reporte");
    }
}
