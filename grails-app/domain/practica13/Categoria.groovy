package practica13

class Categoria {

    String nombre

    Date dateCreated
    Date lastUpdated
    boolean enabled = true

//    int last_user

    static hasMany = [contactos: Contacto]

    static constraints = {
//        last_user( nullable: true )
        nombre (blank: false, minSize: 3, maxSize: 30)
//        last_user display:false
    }
}
