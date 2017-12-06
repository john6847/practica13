package practica13

import grails.plugin.springsecurity.annotation.Secured
import security.Usuario


@Secured(["ROLE_ADMIN"])
class DepartamentoController {

    def index() {
        def departamentos=Departamento.list()
        def usuarios= Contacto.list()
        [departamentos: departamentos,usuarios:usuarios]
    }

    def create(){}

    def crearNuevoDepartamento(){
        Departamento departamento= new Departamento()
        departamento.nombre=params.get("nombreDepartamento")
        departamento.save(flush: true, failOnError: true)
        redirect(uri: "/departamento/index")
    }

    def editDepartamento(){
        def idDepartamento=params.get("id")

        Departamento departamento=Departamento.findById(idDepartamento as Long)
        [categoria: departamento]
    }


    def charts( ){
        List columna_con = [['string', 'Departamento'], ['number', 'Cantidad de Contactos']]
        List data_con = []
        def departamentos = Departamento.findAll( )

        for( Departamento d in departamentos ){
            data_con << [ d.nombre, d.contactos.size( ) ]
        }


        def categorias = Categoria.findAll( )
        List columna_cat = [['string', 'Categoria'], ['number', 'Cantidad de Contactos']]
        List data_cat = []

        for( Categoria c in categorias ){
            data_cat << [ c.nombre, c.contactos.size() ]
        }

        render(view: "charts", model: ["col_con" : columna_con, "data_con" : data_con, "data_cat": data_cat, 'col_cat': columna_cat ] )
    }


    def agregarUsuario(){
        def contactos= Contacto.list()
        def departamentos= Departamento.list()
        [usuarios:contactos,departamentos: departamentos]
    }

    def agregarUsuarioSave(){
        String usuario=params.get("SeleccionarUsuario")
        String departamento=params.get("SeleccionarDepartamento")

        def depart=Departamento.findById(departamento as Long)
        def usua=Contacto.findById(usuario as Long)

        depart.contactos.add(usua)

        depart.save(flush:true,failOnError:true)

        redirect(uri: "/departamento/agregarUsuario")


    }

}
