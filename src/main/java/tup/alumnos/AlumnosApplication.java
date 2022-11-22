package tup.alumnos;

// TODO Es la clase principal de la aplicacion, la genera el asistente de configuracion

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication 

/*Anotación que le dice a Spring que el proyecto va a ser una aplicación de SpringBoot, además activa 3
herramientas de configuración @EnableConfiguration,  @ComponentScan y @SpringBootConfiguration. */

public class AlumnosApplication {

	public static void main(String[] args) {
		SpringApplication.run(AlumnosApplication.class, args);
	}
}