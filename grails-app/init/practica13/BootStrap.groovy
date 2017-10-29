package practica13

import security.Perfil
import security.RequestMap
import security.Usuario
import security.UsuarioPerfil

class BootStrap {

    def init = { servletContext ->

        Usuario usuario = Usuario.findByUsername("admin") ? null :new Usuario(username: "admin", password: "admin").save(flush: true, failOnError: true)
        if(usuario) {
            Perfil perfil = new Perfil(authority: "ROLE_ADMIN").save(flush: true, failOnError: true)

            UsuarioPerfil.create(usuario, perfil)

            new Perfil(authority: "ROLE_USER").save(flush: true, failOnError: true)

            for (String url in [
                    '/', '/error', '/index', '/index.gsp', '/**/favicon.ico', '/shutdown',
                    '/assets/**', '/**/js/**', '/**/css/**', '/**/images/**',
                    '/login', '/login.*', '/login/*',
                    '/logout', '/logout.*', '/logout/*', '/dbconsole/**']) {
                new RequestMap(url: url, configAttribute: 'permitAll,ROLE_ANONYMOUS').save(flush: true, failOnError: true)
            }

            new RequestMap(url: '/console/**', configAttribute: 'ROLE_ADMIN').save(flush: true, failOnError: true)
            new RequestMap(url: '/plugins/console*/**', configAttribute: 'ROLE_ADMIN').save(flush: true, failOnError: true)
            new RequestMap(url: '/static/console/**', configAttribute: 'ROLE_ADMIN').save(flush: true, failOnError: true)
            new RequestMap(url: '/profile/**', configAttribute: 'ROLE_USER').save(flush: true, failOnError: true)
            new RequestMap(url: '/admin/**', configAttribute: 'ROLE_ADMIN').save(flush: true, failOnError: true)
            new RequestMap(url: '/admin/role/**', configAttribute: 'ROLE_SUPERVISOR').save(flush: true, failOnError: true)
            new RequestMap(url: '/admin/user/**', configAttribute: 'ROLE_ADMIN,ROLE_SUPERVISOR').save(flush: true, failOnError: true)
            new RequestMap(url: '/login/impersonate', configAttribute: 'ROLE_SWITCH_USER,isFullyAuthenticated()').save(flush: true, failOnError: true)
        }


        def departamento = new Departamento( )
        departamento.nombre = "NOse"
        departamento.save(flush: true, failOnError: true)

        def departamento2 = new Departamento( )
        departamento2.nombre = "Recursos Humanos"
        departamento2.save(flush: true, failOnError: true)

        def categoria = new Categoria()
        categoria.nombre = "Categoria 1"
        categoria.save(flush: true, failOnError: true)

        def categoria2 = new Categoria()
        categoria2.nombre = "Categoria 2"
        categoria2.save(flush: true, failOnError: true)

    }
    def destroy = {
    }
}
