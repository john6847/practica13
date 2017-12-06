package practica13

import grails.plugin.springsecurity.annotation.Secured
import security.Usuario


@Secured(["ROLE_ADMIN"])
class ContactoController {

    def index() {

//        Usuario usuario=(Usuario) applicationContext.springSecurityService.getCurrentUser()

        def contactos=Contacto.findAllByEnabled(true)
        def departamentos=Departamento.list()
        [contactos:contactos,departamentos: departamentos]
    }

    def create(){
        def categorias=Categoria.list()
        def departamentos=Departamento.list()

        [categorias:categorias,departamentos:departamentos]
    }

    def crearNuevoContacto(){
        String[] departamentos=params.get("SeleccionarDepartamento")
        def categoria=params.get("SeleccionarCategoria")

        Contacto contacto= new Contacto()
        contacto.departamentos=new ArrayList<>()

        contacto.nombre=params.get("nombreContacto")
        contacto.apellido=params.get("apellidoContacto")
        contacto.telefono=params.get("apellidoContacto")
        contacto.celular=params.get("celularContacto")
        contacto.puesto_de_trabajo=params.get("puestoContacto")
        contacto.email=params.get("emailContacto")
        contacto.categoria= Categoria.findById(categoria)

        for (int i = 0; i < departamentos.size(); i++) {
            println "Roles a cada posicion " + departamentos[i]
            contacto.departamentos.add(Departamento.findById(departamentos[i] as Long))
        }

        contacto.save(flush: true, failOnError: true)

//        if (departamentos.size() >= 2 && departamentos.size() <= 5) {
//            for (int i = 0; i < roles.size(); i++) {
//                println "Roles a cada posicion " + roles[i]
//                new UsuarioDepartamento(usuario: contacto, perfil: Departamento.findByAuthority(departamentos[i])).save(flush: true, failOnError: true)
//            }
//        } else if (departamentos.size() > 5) {
//            StringBuilder builder = new StringBuilder();
//            for (String value : roles) {
//                builder.append(value);
//            }
//            String text = builder.toString();
//            new UsuarioPerfil(usuario: usuario, perfil: Perfil.findByAuthority(text)).save(flush: true, failOnError: true)
//        }
        redirect(uri: "/contacto/index")
    }

    def verContacto(){

        def idContacto=params.get("id")
        Contacto contacto=Contacto.findById(idContacto as Long)

       // def departamentos=Departamento.findAllByContactos(contacto).departamento


       // [usuario:contacto,listaPerfil: departamentos]
    }

    def buscarContactos(long id){

        def contactos=Contacto.findAllByEnabled(true)

        [contactos: contactos]
    }
}
