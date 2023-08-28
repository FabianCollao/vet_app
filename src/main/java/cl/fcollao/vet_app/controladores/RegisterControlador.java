package cl.fcollao.vet_app.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cl.fcollao.vet_app.entidades.Dueño;
import cl.fcollao.vet_app.servicios.DueñoServicio;
import cl.fcollao.vet_app.utils.Log;
import cl.fcollao.vet_app.utils.TipoLog;

@Controller
public class RegisterControlador {
	
	@Autowired
    private PasswordEncoder passwordEncoder;
	@Autowired
	private DueñoServicio dueñoServ;
	
	@RequestMapping(value = "/register", method=RequestMethod.GET)
    public ModelAndView mostrarAutoregistro() {
        return new ModelAndView("register");
    }
	@RequestMapping(value = "/register", method=RequestMethod.POST)
    public ModelAndView registrarUsuario(@RequestParam("user") String nombreUsuario,
    		@RequestParam("password") String contraseña,
    		@RequestParam("confirmPassword") String confirmarContraseña,
    		@RequestParam("nombres") String nombres,
    		@RequestParam("correo") String correo,
    		@RequestParam("apellidoPaterno") String apellidoPaterno,
    		@RequestParam("direccion") String direccion,
    		@RequestParam("telefono") int telefono) {
		
		//Validacion contraseña para encriptación
		if(contraseña.equals(confirmarContraseña.trim())) {
			contraseña = passwordEncoder.encode(contraseña);
			dueñoServ.crearDueño(
					new Dueño(nombreUsuario, correo, contraseña, nombres, apellidoPaterno, direccion, telefono));
			Log.registrar(getClass(), TipoLog.INFO, "Usuario Dueño("+nombres+") registrado");
			
		}
		return new ModelAndView("redirect:/login");
	}
}
