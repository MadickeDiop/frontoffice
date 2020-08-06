package ips

class Evenement {

    Integer code
    String dateev
    String libelle

    static hasMany = [couriers:Courier]

    static constraints = {
    }
}
