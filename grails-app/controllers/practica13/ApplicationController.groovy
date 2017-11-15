package practica13


class ApplicationController {

    def index() {
        println("entro al index....")
        render(view: "/index", model: [])
    }
}
