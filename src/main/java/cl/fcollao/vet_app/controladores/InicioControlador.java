package cl.fcollao.vet_app.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InicioControlador {
	
	@RequestMapping(value = {"/", "/Inicio"}, method = RequestMethod.GET)
    public ModelAndView mostrarInicio() {
        return new ModelAndView("index");
    }
}
