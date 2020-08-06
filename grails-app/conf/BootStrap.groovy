import ips.Courier
import ips.Evenement
import ips.Expediteur
import ips.Vignette

class BootStrap {

    def init = { servletContext ->
      /* Vignette v1 = new  Vignette(codeVignette: "RR265398712SN").save()
        Vignette v2 = new  Vignette(codeVignette: "RS665447872SN").save()


        Expediteur e1 = new Expediteur(nomExp: "Diallo",prenomExp: "Asy",adresseExp: "53a murtenstrasse",codepostal: "3000",telephoneExp: "770345782",mailExpe: "diallo@laposte.sn",cni: "1651200800014").save()
        Expediteur e2 = new Expediteur(nomExp: "Sy",prenomExp: "Bole",adresseExp: "Rue Uacd",codepostal: "4000",telephoneExp: "777898637",mailExpe: "diabole@laposte.sn",cni: "1651200800014").save()



        Evenement even1 = new Evenement(code: 8,dateev: "2020-01-13T09:07:47.6030000",libelle: "recuperation douaniaire").save()
        Evenement even2 = new Evenement(code: 3,dateev: "2020-01-13T09:18:28.2170000",libelle: "deaprt bureau poste").save()


        new Courier(evenement: even1,expediteur: e1,vignette: v1).save()
        new Courier(evenement: even2,expediteur: e2,vignette: v2).save()*/

    }
    def destroy = {
    }
}
