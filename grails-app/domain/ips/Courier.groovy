package ips

import grails.rest.Resource

 @Resource(uri = "/api/courier", formats = ["json","xml"])
class Courier {

    Evenement evenement
    Expediteur expediteur
    Vignette vignette

    static belongsTo = [Evenement,Expediteur,Vignette]


    static constraints = {
    }
}
