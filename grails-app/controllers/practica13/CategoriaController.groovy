package practica13

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN"])
class CategoriaController {

    static scaffold = Categoria
    def index() { }
}
