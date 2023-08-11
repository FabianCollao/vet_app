package cl.fcollao.vet_app.controladores;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cl.fcollao.vet_app.utils.Log;
import cl.fcollao.vet_app.utils.TipoLog;

@Controller
public class LoginControlador {
	
	@RequestMapping(value = "/login")
    public ModelAndView mostrarLogin() {
        return new ModelAndView("login");
    }
	@RequestMapping(value = "/error")
    public ModelAndView errorLogin() {
		Log.registrar(getClass(), TipoLog.INFO, "Error al iniciar sesión");
		System.out.println("Error al iniciar sesion");
        return new ModelAndView("login","error",true);
    }
	@RequestMapping(value = "/logout")
    public ModelAndView mostrarInicio() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Boolean logoutt = false;
		if(auth != null) {
			SecurityContextHolder.getContext().setAuthentication(null);
			logoutt = true;
			Log.registrar(getClass(), TipoLog.INFO, "Usuario cerró sesión");
		}
        return new ModelAndView("redirect:/login?logout").addObject(logoutt);
    }
}
