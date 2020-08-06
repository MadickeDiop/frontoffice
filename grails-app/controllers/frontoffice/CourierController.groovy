package frontoffice

import grails.rest.RestfulController
import groovy.xml.MarkupBuilder
import ips.Courier
import ips.Evenement
import ips.Expediteur
import ips.Vignette

class CourierController extends RestfulController{

    def xmlfileService

    def courierService

    CourierController(){
        super(Courier)
    }

    def index() {

        def ips = new XmlSlurper().parse(new File("/home/madicke/Desktop/LaPoste/Exporttest/EXPORT_20200115_174253_0.xml"))

        def contenu = ips."MailItem".each {
            var ->
                def vigne = new Vignette()
                def expedit = new Expediteur()
                def even = new Evenement()

                vigne.codeVignette = var['@ItemId']

                expedit.nomExp = var.FromIPS.Sender.Name[0].text()
                expedit.prenomExp = var.FromIPS.Sender.Forename[0].text()
                expedit.adresseExp = var.FromIPS.Sender.Address[0].text()
                expedit.codepostal = var.FromIPS.Sender.Codepostal[0].text()
                expedit.telephoneExp = var.FromIPS.Sender.PhoneNo[0].text()
                expedit.mailExpe = var.FromIPS.Sender.Email[0].text()
                expedit.cni = var.FromIPS.Sender.Cni[0].text()


                def casttNCd = var.FromIPS.IPSEvent.TNCd[0].text()
                if (casttNCd)
                    even.code = casttNCd.toInteger()
                else
                    even.code = 0

                even.dateev = var.FromIPS.IPSEvent.Date[0].text()
                even.libelle = var.FromIPS.IPSEvent.OfficeCd[0].text()


                vigne.save(flush: true, failOnError: true)
                expedit.save(flush: true, failOnError: true)
                even.save(flush: true, failOnError: true)

                new Courier(evenement: even, expediteur: expedit, vignette: vigne).save()


        }

    }

    def recapxml() {

        //def liste = Courier.findAllByVignette(Vignette.findAllByCodeVignetteLike("R%"))

        def liste = Courier.list()


        /* def criteria = Courier.createCriteria()
         def liste = criteria.list {
             eq()
         }*/

        render(view: "recapxml", model: [list: liste])

    }


    def acceuilips() {

    }

    def envoiareceptionner() {

        render(view: "recapxml")
    }


    def writeinxmlfile() {


        def listecourier = Courier.list()

        def fileWriter = new FileWriter("/home/madicke/Desktop/LaPoste/Export/EXPORT_20200115_174253_0.xml")
        def affranchiBuilder = new MarkupBuilder(fileWriter)
        affranchiBuilder.ips {
            for (courier in listecourier) {
                affranchiBuilder.MailsItem(courier.vignette.codeVignette) {
                    affranchiBuilder.FromIPS {
                        affranchiBuilder.Sender {
                            Name("${courier.expediteur.nomExp}")
                            Forename("${courier.expediteur.prenomExp}")
                            Address("${courier.expediteur.adresseExp}")
                            Postcode("${courier.expediteur.codepostal}")
                            PhoneNo("${courier.expediteur.telephoneExp}")
                            Email("${courier.expediteur.mailExpe}")
                            Cni("${courier.expediteur.cni}")

                        }
                        affranchiBuilder.IPSEvent {
                            TNCd("${courier.evenement.code}")
                            Date("${courier.evenement.dateev}")
                            OfficeCd("${courier.evenement.libelle}")
                        }
                    }

                }
            }
        }
        fileWriter.close();

        render("writting success")
    }



    def getxmlfile(){
        render(xmlfileService.getAllxmlfile())

    }

    def  getAllcourier(){
        render(courierService.liste())
    }

    /*def getByid(){
        render(courierService.getById())
    }*/


    def getByid(){

        render(Courier.findByExpediteur(id: 1))
    }

    def getlisteexp(){
        def c = new Courier()
        def  listeexp = c.getExpediteur()

        render(model:  [exp:listeexp])
    }





}

