/*  TODO Esta Clase AlumnoController atiende los request HTTP ua sean GET, POST entre otros 
y decide a que metodo llamar                                                   */ 

package tup.alumnos.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import tup.alumnos.models.Alumno;
import tup.alumnos.repositories.AlumnoRepository;


@RestController

@RequestMapping("")
public class AlumnoController {

  @Autowired
  private AlumnoRepository alumnoRepository;

  @PostMapping("/add") // Map ONLY POST Requests
    // @RequestParam means it is a parameter from the GET or POST request
  public String addNewUser(@RequestParam String nombre, @RequestParam String curso, @RequestParam String sexo) {


    Alumno user = new Alumno();
    user.setNombre(nombre);
    user.setCurso(curso);// 
    user.setSexo(sexo);
    alumnoRepository.save(user);
    //MODIFIED modificamos el return de el retorno del método.
    return "Se ha agregado el nuevo alumno: \""+nombre+ "\"  a la base de datos";
  }

  @PostMapping("/delete/{id}") // Map ONLY POST Requests
  public String deleteUserById(@PathVariable Long id) { 


    alumnoRepository.deleteById(id);
    return "Se ha eliminado el alumno de la base de datos";
  }

  @GetMapping("/{id}")
  public String findUserById(@PathVariable Long id) { 
        //MODIFIED  modificamos el color de la tabla 
    String resp = """
          <style>
            #users {
              font-family: Arial, Helvetica, sans-serif;
              border-collapse: collapse;
              width: 100%;
            }
            #users td, #users th {   
              border: 1px solid #ddd;
              padding: 8px;
            }
            #users tr:nth-child(even){background-color: #f2f2f2;}
            #users tr:hover {background-color: #ddd;}
            #users th {
              padding-top: 12px;
              padding-bottom: 12px;
              text-align: left;
              background-color: #ffa600;
              color: white;
            }
          </style>
          <table id='users'>
            <tr>
              <th>Id</th>
              <th>nombre</th>
              <th>curso</th>
              <th>sexo</th>
            </tr>
        """;
   
    if (alumnoRepository.findById(id).isPresent()) {
  
      Alumno user = alumnoRepository.findById(id).get();
      resp += "<tr>"
          + "<td>" + user.getId() + "</td>"
          + "<td>" + user.getNombre() + "</td>"
          + "<td>" + user.getCurso() + "</td>"
          + "<td>" + user.getSexo() + "</td>"
          + "</tr>";
    /*NEW  agregamos mensaje de advertencia sacado de : https://codepen.io/palimadra/pen/OVvbaY*/
    } else {
       resp ="""
        <div class='error'>Usted ingresó un id incorrecto o inexistente, por favor intente nuevamente</div>
      <style>
      .error{
          border: 1px solid;
          margin: 10px 0px;
          padding: 15px 10px 15px 50px;
          background-repeat: no-repeat;
          background-position: 10px center;
        } 
        .error{
          color: #9F6000;
			background-color: #FEEFB3;
			background-image: url('https://i.imgur.com/Z8q7ww7.png');
        }
      </style>
     
      """;

    }
    return resp + "</table>";
  }


  @GetMapping("/all")
  public String getAllUsers() {
    // retorna un json  
    Iterable<Alumno> iterable = alumnoRepository.findAll();
    
     // Lo que viene a continuación se llama text block, 
    
    String resp = """
          <style>
            #users {"
              font-family: Arial, Helvetica, sans-serif;
              border-collapse: collapse;
              width: 100%;
            }
            #users td, #users th {
              border: 3px solid #ddd;
              padding: 8px;
            }
            #users tr:nth-child(even){background-color: #f2f2f2;}
            #users tr:hover {background-color: #ddd;}
            #users th {
              padding-top: 12px;
              padding-bottom: 12px;
              text-align: left;
              background-color: #ffa600;
              color: white;
            }
          </style>
          <table id ='users'>
            <tr>
              <th>Id</th>
              <th>nombre</th>
              <th>curso</th>
              <th>sexo</th>
            </tr>
        """;
        /**
         * Ya terminé con la fila de los encabezados, y ahora tengo que
         * generar el cuerpo de la tabla, una fila por cada registro.
         * No puedo usar forEach() con una función lambda
         * porque el scope de las variables no lo permite.
         * Por eso uso el for mejorado, para recorrer el objeto iterable.
         */
    for (Alumno user : iterable) {
      resp += "<tr>"
          + "<td>" + user.getId() + "</td>"
          + "<td>" + user.getNombre() + "</td>"
          + "<td>" + user.getCurso() + "</td>"
          + "<td>" + user.getSexo() + "</td>"
          + "</tr>";
    }
    return resp + "</table>";
  }
  
//NEW agregamos un mensaje de bienvenida 
  @GetMapping("")
  public String hola() {
    String resp = """
      <h1 class='Bienvenidos'>Hola bienvenido al registro de datos de la escuela "Santa María"</h1>
    <style>

  .Bienvenidos{
    background-color: #f2f2f2;
    border: 1px solid #ddd;
    padding:12px;
    padding-left: 8px;
    font-style:italic;
    width: 70%;
    text-align:center;
  }

    </style>
   
    """;
    return resp;
      }
  }
