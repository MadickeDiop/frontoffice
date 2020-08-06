package ips

import grails.rest.Resource


class Vignette {

    String codeVignette

    static hasMany = [couriers:Courier]

    static constraints = {
    }
}
