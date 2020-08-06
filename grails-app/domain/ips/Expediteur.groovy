package ips

class Expediteur {
    String nomExp
    String prenomExp
    String adresseExp
    String codepostal
    String telephoneExp
    String mailExpe
    String cni

    static  hasMany = [couries:Courier]


    static constraints = {


    }
}

