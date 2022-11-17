package tup.alumnos.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import tup.alumnos.models.Alumno;


@Repository
public interface AlumnoRepository extends CrudRepository<Alumno, Long> {
}

