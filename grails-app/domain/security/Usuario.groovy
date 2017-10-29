package security

import practica13.Departamento

class Usuario {

    String username
    String password

    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired

    //Datos genericos del dominio.
    String creadoPor = "sistemas";
    String modificadoPor = "sistemas";
    Date dateCreated;
    Date lastUpdated;

    static belongsTo = [departamento: Departamento ]
    static hasMany = [ authorities: UsuarioPerfil ]

    Set<Perfil> getAuthorities() {
        (UsuarioPerfil.findAllByUsuario(this) as List<UsuarioPerfil>)*.perfil as Set<Perfil>
    }

    static constraints = {
        password blank: false, password: true
        username blank: false, unique: true
//        last_user( nullable: true )
        departamento (nullable: true)
//        last_user ( display:false )
    }

    static mapping = {
        password column: '`password`'
    }
}
