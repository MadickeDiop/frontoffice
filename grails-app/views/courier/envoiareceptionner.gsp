<%--
  Created by IntelliJ IDEA.
  User: madicke
  Date: 11/06/2020
  Time: 13:24
--%>

<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="maincourierips">
    <g:set var="entityName" value="${message(code: 'jt_Reclamation.label', default: 'Jt_Reclamation')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<div class="content">
    <div class="container-fluid">
        <g:if test="${flash.message}">
            <div class="alert alert-success" role="status">${flash.message}</div>
        </g:if>
        <g:form action="saveReception">

            <div class="col-md-12">
                   <div class="card">
                     <div class="card-header card-header-primary card-header-icon">
                       <div class="card-icon">
                         <i class="fa fa-th-list fa-2x"></i>
                       </div>
                       <h4 class="card-title">Liste des envois à réceptionner </h4>
                     </div>
                     <div class="card-body">
            <g:if test="${listenvoi}">
                <div class="table-responsive">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th>Date</th>
                        <th>N</th>
                        <th>Bureau Destination</th>
                        <th>Bureau Dépot</th>
                        <th>Expéditeur</th>
                        <th>Destinataire</th>

                        <th></th>
                      </tr>
                    </thead>
                    <tbody>
                <g:each in="${listenvoi.envoi}" var="e">
                    <tr>

                        <td style="width: 9%"><g:formatDate date="${e?.dateCommande}" format="dd-MM-yyyy"/></td>
                        <td><g:link action="show" rel="tooltip" id="${e.id}" rel="tooltip" class="" data-original-title="Afficher" title="">${e.numeroCommande}</g:link></td>
                        <td>${e.bureauDestination}</td>
                        <td >${e.bureauDepot}</td>
                        <td style="width: 15%">${e.expediteur.nomExp} ${e.expediteur.prenomExp}</td>
                        <td style="width: 15%">${e.nomDestinataire} ${e.prenomDestinataire}</td>


                        <td class="td-actions">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="checkbox" value="${e?.id}" name="idenvoi" >
                                    <span class="form-check-sign">
                                        <span class="check"></span>
                                    </span>
                                </label>
                            </div>
                        </td>
                    </tr>
                </g:each>
                <tr>
                    <td colspan="6"></td>
                    <td class="td-price">
                        <button type="submit" class="btn btn-info">Réceptionner</button>
                    </td>
                </tr>
                </tbody>
              </table>
            </g:if>
            <g:else>
                <div class="" role="status">Pas d'envoi à réceptionner!!</div>
            </g:else>
            </div>
          </div>
        </div>

        </g:form>
    </div>
    </div>

</body>
</html>