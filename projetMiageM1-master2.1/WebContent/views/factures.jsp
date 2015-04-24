<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
       <meta charset="utf-8"/>
        <title>CoproManager - Factures</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Christopher Boudier">
        
        <meta http-equiv="imagetoolbar" content="no" />
        <meta name="MSSmartTagsPreventParsing" content="true" />

        <!-- the styles -->
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.min.css" />">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap-responsive.min.css" />">
        <link rel='stylesheet' type='text/css' href="<c:url value="http://fonts.googleapis.com/css?family=Pontano+Sans" />">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/js/nivo-slider/themes/default/default.css" />" media="screen" />
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/js/nivo-slider/nivo-slider.css" />" >
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/js/lightbox/css/lightbox.css" />" />
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/template.css" />" media="screen">   
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style1.css" />" />
        <link rel="alternate stylesheet" type="text/css" media="screen" title="style2" href="<c:url value="/resources/css/style2.css" />" />
        <link rel="alternate stylesheet" type="text/css" media="screen" title="style3" href="<c:url value="/resources/css/style3.css" />" />
        <link rel="alternate stylesheet" type="text/css" media="screen" title="style4" href="<c:url value="/resources/css/style4.css" />" />
        <link rel="alternate stylesheet" type="text/css" media="screen" title="style5" href="<c:url value="/resources/css/style5.css" />" />
        <link rel="alternate stylesheet" type="text/css" media="screen" title="style6" href="<c:url value="/resources/css/style6.css" />" />
    
    
        <script type="text/javascript" src="<c:url value="/resources/js/jquery-1.7.1.min.js" />"></script>
        <script type="text/javascript" src="<c:url value="/resources/js/swfobject/swfobject.js" />"></script>
    	<script type="text/javascript" src="<c:url value="/resources/js/lightbox/js/lightbox.js" />"></script>

        <!-- style switcher -->
        <script type="text/javascript" src="<c:url value="/resources/js/styleswitcher.js" />"></script>
        

        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        

        <!-- The fav and touch icons -->
        <link rel="shortcut icon" href="<c:url value="/resources/img/ico/favicon.ico" />">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<c:url value="/resources/img/ico/apple-touch-icon-144-precomposed.png" />">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<c:url value="/resources/img/ico/apple-touch-icon-114-precomposed.png" />">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<c:url value="/resources/img/ico/apple-touch-icon-72-precomposed.png" />">
        <link rel="apple-touch-icon-precomposed" href="<c:url value="/resources/img/ico/apple-touch-icon-57-precomposed.png" />">
    </head>

    <body>

		<section id="header">
        <!-- Include the header bar -->
            <%@include file="header.jsp"%>
        <!-- /.container -->  
        </section><!-- /#header -->
         
        <section id="navigation-main">   
        	<!-- Include the navigation bar -->
        	<%@include file="navigation.jsp"%>
        </section><!-- /#navigation-main -->
		
		
		<!-- Include the content pages -->
		<section class="container">			
			
			<div class="row-fluid">
	           	<div class="span12">
			   		<h3 class="header">Factures
			            <span class="header-line"></span> 
			        </h3>
			    </div>
		       	<div class="span12" id="factures">
	           		<table class="table table-striped table-bordered table-hover">
						<thead>
	                        <tr>
	                          	<th class="date">Sujet</th>
	                          	<th class="montant">Montant</th>
	                        </tr>
	                    </thead>
	                    <tbody>
	                    	<c:forEach var="t" items="${listF}">
	                    		<c:choose>
	                    			<c:when test="${t == null}"></c:when>
	                    			<c:otherwise>
	                    				<tr>
	                			            <td class="sujet">
				                          		<c:out value="${t.getSujet()}"/>
				                          	</td>
				                          	<td class="montant">
				                          		<c:out value="${t.getMontantAPayer()}"/>
				                          	</td>
				                          	<td>
				                          		
						                          	<div class="modif">
							                          	<a href="<c:url value='consulterFac'><c:param name="sujet" value="${t.getSujet()}" /></c:url>" >
						                          			<button type="button" class="btn btn-mini btn-primary">Consulter</button>
						                          		</a>
						                          	</div>
						                       		<div class="suppr">
							                          	<a href="<c:url value='supprFac'><c:param name="sujet" value="${t.getSujet()}" /></c:url>" >
						                          			<button type="button" class="btn btn-mini">Supprimer</button>
						                          		</a>
						                          	</div>						                          							              	
												
												
												
												
					                        </td>			                          	
				                        </tr>
	                    			</c:otherwise>
	                    		</c:choose>
	                    	</c:forEach>
	                    </tbody>
					</table>
	           	</div>
	           	
	           	<div class="span3">
	          		<a href="#modalEnvoiFacture" role="button" class="btn btn-primary" data-toggle="modal">Envoyer une facture</a>
	          	</div>
	           	
          	</div>
			
		</section>
			

		<%@include file="footer.jsp"%>
		
		<!-- Modal Aj-->
		<div class="modal hide fade" id="modalEnvoiFacture">
		
		  	<div class="modal-header">
		    	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		    	<h3>Envoyer une facture</h3>
		  	</div>
		
		  	<s:form action="FactureFormAj">
		
			  	<div class="modal-body">
			    	<s:textfield label="Sujet" name="f.sujet" required="required"/>
					
					<s:textfield label="Montant" name="f.montantAPayer" required="required" cols="20" rows="10"/>
					
					<s:textarea label="Detail" name="f.detail" required="required" cols="20" rows="10"/>
					
					<s:textfield label="e-mail" name="f.mail" required="required" cols="20" rows="10"/>
					
					<s:submit value="Valider" name="submit" class="btn btn-large btn-primary"/>
			  	</div>
		
			</s:form> 		
		</div>
		
		
		
        <!-- Le javascript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        
        <script src="<c:url value="/resources/js/bootstrap-transition.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap-alert.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap-modal.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap-dropdown.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap-scrollspy.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap-tab.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap-tooltip.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap-popover.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap-button.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap-collapse.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap-carousel.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap-typeahead.js" />"></script>   
        <script type="text/javascript" src="<c:url value="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.min.js" />"></script>
    </body>
</html>
