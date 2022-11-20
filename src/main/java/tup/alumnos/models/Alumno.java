package tup.alumnos.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

// anotación de Lombok que genera getters setters, toString, equals y hashCode.
@Data

//anotación de JPA que le dice a Spring Boot que esta clase es una entidad de JPA
@Entity 

//MODIFIED cambiamos los valores de la clase Alumno
public class Alumno {

//anotación de JPA que le dice a SpringBoot que va a ser la clave primaria de la entidad(primary key)
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nombre;

    private String curso;

    private String sexo;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }




}


