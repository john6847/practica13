package practica13

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN"])
class CategoriaController {

    def index() {
        def categorias=Categoria.list()
        [categorias:categorias]
    }

    def create() {}

    def crearNuevaCategoria() {

        Categoria categoria = new Categoria()
        categoria.nombre=params.get("nombreCategoria")
        categoria.save(flush: true, failOnError: true)

        redirect(uri: "/categoria/index")
    }


    def editCategoria(){
        def idCategoria=params.get("id")

        Categoria categoria=Categoria.findById(idCategoria as Long)
        [categoria: categoria]
    }
}