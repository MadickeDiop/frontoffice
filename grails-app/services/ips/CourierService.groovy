package ips

import grails.converters.JSON
import grails.converters.XML
import grails.transaction.Transactional
import org.codehaus.groovy.ast.tools.GeneralUtils

@Transactional
class CourierService {

    def serviceMethod() {

    }

    def liste(){
        def result = Courier.findAll()
        def resp = result as JSON
        return resp
    }


 /*   def getById(def params, def request){
        def respons = Courier.findById(params?.id)
        return  respons
*/

    def getById(id){

        return Courier.get(id)
    }



}
