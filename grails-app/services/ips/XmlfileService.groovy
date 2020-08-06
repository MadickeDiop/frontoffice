package ips

import grails.plugins.rest.client.RestBuilder
import grails.transaction.Transactional

@Transactional
class XmlfileService {

    def serviceMethod() {

    }
    def getAllxmlfile(){
        def rest = new RestBuilder()

        def resp = rest.get("http://localhost:8080/frontoffice/api/courier")
        
        def resultat = resp.json

        return  resultat

    }
}
