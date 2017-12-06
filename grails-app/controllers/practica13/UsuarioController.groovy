package practica13

import grails.plugin.springsecurity.annotation.Secured
import security.Perfil
import security.Usuario
import security.UsuarioPerfil


@Secured(["ROLE_ADMIN"])
class UsuarioController {

    def index() { }

    def crear(){}

    def crearUsuario(){
            String[] roles=params.get("SeleccionarRol")

            Usuario usuario=new Usuario()

            def username=params.get("username")
            def password=params.get("passwordUser")


            usuario.setUsername(username as String)
            usuario.setPassword(password as String)

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
}
