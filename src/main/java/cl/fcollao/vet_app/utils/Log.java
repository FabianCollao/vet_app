package cl.fcollao.vet_app.utils;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class Log {

	private static Logger log = null;

	public static void registrar(Class clase, TipoLog tipo, String mensaje) {
		log = (Logger) LogManager.getLogger(clase);
		switch (tipo) {
		case DEBUG:
			log.debug("["+clase+"]"+mensaje);
			break;
		case ERROR:
			log.error("["+clase+"]"+mensaje);
			break;
		case FATAL:
			log.fatal("["+clase+"]"+mensaje);
			break;
		case INFO:
			log.info("["+clase+"]"+mensaje);
			break;
		case WARNING:
			log.warn("["+clase+"]"+mensaje);
			break;
		default:
			log.debug("Tipo de Log desconocido :"+ tipo);
			break;
		}
	}

}
