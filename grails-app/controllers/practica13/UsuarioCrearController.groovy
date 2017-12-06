package practica13

import grails.plugin.springsecurity.annotation.Secured
import security.Perfil
import security.Usuario
import security.UsuarioPerfil

@Secured(["ROLE_ADMIN"])
class UsuarioCrearController {

    @Secured(["ROLE_ADMIN"])
    def index() {
        def usuarios=Usuario.list()
        [usuarios:usuarios]
    }

    @Secured(["ROLE_ADMIN"])

    def create(){
        def departamentos=Departamento.list()

        [departamentos:departamentos]
    }

    @Secured(["ROLE_ADMIN"])
    def nuevoUsuario(){
        String[] roles=params.get("SeleccionarRol")
        String departamento=params.get("SeleccionarDepartamento")


        Usuario usuario=new Usuario()

        def departamento1= Departamento.findByNombre(departamento)

        def username=params.get("username")
        def password=params.get("passwordUser")


        usuario.setUsername(username as String)
        usuario.setPassword(password as String)


        usuario.departamento= departamento1
        usuario.save(flush:true,failOnError:true)


        if (roles.size() >= 2 && roles.size() <= 5) {
            for (int i = 0; i < roles.size(); i++) {
                println "Roles a cada posicion " + roles[i]
                new UsuarioPerfil(usuario: usuario, perfil: Perfil.findByAuthority(roles[i])).save(flush: true, failOnError: true)
            }
        } else if (roles.size() > 5) {
            StringBuilder builder = new StringBuilder();
            for (String value : roles) {
                builder.append(value);
            }
            String text = builder.toString();
            new UsuarioPerfil(usuario: usuario, perfil: Perfil.findByAuthority(text)).save(flush: true, failOnError: true)
        }
        redirect(uri: "/usuarioCrear/index")
    }


    def edit(){

    }
}
