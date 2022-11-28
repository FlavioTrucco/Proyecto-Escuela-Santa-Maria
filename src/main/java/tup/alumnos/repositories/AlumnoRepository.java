package tup.alumnos.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import tup.alumnos.models.Alumno;


@Repository

/* TODO Esta anotación le indica a Spring Boot que las clases
 * que implementan esta interfaz UserRepository son candidatas a la inyección
 * de dependencias. La clase que hace todo el trabajo en este ejemplo es
 * AlumnoController. La clase AlumnoController es la que va a recibir la inyección
 * de la dependencia. Esto significa que esta clase va a tener una
 * variable declarada del tipo AlumnoRepository.

 */
public interface AlumnoRepository extends CrudRepository<Alumno, Long> {
}

