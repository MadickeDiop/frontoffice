

<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="maincourierips"/>
    <title>Sama Keuyit</title>

</head>
<body>



<div class="col-md-12">
    <div class="card">
        <div class="card-header card-header-primary card-header-icon">
            <div class="card-icon">
                <i class="fa fa-envelope-square fa-2x"></i>
            </div>
            <h4 class="card-title">Liste des envois à réceptionner </h4>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th style="width: 5%">N°</th>
                        <th style="width: 5%">CodeVignette</th>
                        <th style="width: 5%">CodeEven</th>
                        <th style="width: 5%">DateEven</th>
                        <th style="width: 5%">LibelleEven</th>
                        <th>nomExp</th>
                        <th>prenomExp</th>
                        <th>adresseExp</th>
                        <th>codepostalExp</th>
                        <th>telephoneExp</th>
                        <th>mailExpe</th>
                        <th>cniExp</th>

                        <%--

                        <th>PostalStatusFcd</th>
                        <th>ConveyanceTypeCd</th>
                        <th>MailCategoryCd</th>
                        <th>MailItemCategoryCd</th>
                        <th>ExpressInd</th>
                              <th class="disabled-sorting text-right">Actions</th>--%>
                    </tr>

                    </thead>
                    <tfoot>
                    <tr>
                        <th style="width: 5%">N°</th>
                        <th style="width: 5%">CodeVignette</th>
                        <th style="width: 5%">CodeEven</th>
                        <th style="width: 5%">DateEven</th>
                        <th style="width: 5%">LibelleEven</th>
                        <th>nomExp</th>
                        <th>prenomExp</th>
                        <th>adresseExp</th>
                        <th>codepostalExp</th>
                        <th>telephoneExp</th>
                        <th>mailExpe</th>
                        <th>cniExp</th>
                    <%--
                    <th>PostalStatusFcd</th>
                    <th>ConveyanceTypeCd</th>
                    <th>MailCategoryCd</th>
                    <th>MailItemCategoryCd</th>
                    <th>ExpressInd</th>
                        --%></tr>

                    </tfoot>
                    <tbody>
                    <g:each in="${list}"  var="l">
                        <tr>
                             <td>${l.id}</td>
                        <td style="width: 2%">${l.vignette.codeVignette}</td>
                        <td style="width: 2%">${l.evenement.code}</td>
                        <td style="width: 2%">${l.evenement.dateev}</td>
                        <td style="width: 2%">${l.evenement.libelle}</td>
                        <td style="width: 2%">${l.expediteur.nomExp}</td>
                        <td style="width: 2%">${l.expediteur.prenomExp}</td>
                        <td style="width: 2%">${l.expediteur.adresseExp}</td>
                        <td style="width: 2%">${l.expediteur.codepostal}</td>
                        <td style="width: 2%">${l.expediteur.telephoneExp}</td>
                        <td style="width: 2%">${l.expediteur.mailExpe}</td>
                        <td style="width: 2%">${l.expediteur.cni}</td>

                    <%--<td class="text-right">
                      <a href="#" class="btn btn-link btn-info btn-just-icon like"><i class="material-icons">favorite</i></a>
                      <a href="#" class="btn btn-link btn-warning btn-just-icon edit"><i class="material-icons">dvr</i></a>
                      <a href="#" class="btn btn-link btn-danger btn-just-icon remove"><i class="material-icons">close</i></a>
                    </td>
                    --%>

                            <td class="td-price">
                                <button  type="submit" class="btn btn-info">Réceptionner</button>
                            </td>

                  </tr>

          </g:each>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- end content-->
    </div>
    <!--  end card  -->
</div>
<!-- end col-md-12 -->



</body>
</html>
			
			