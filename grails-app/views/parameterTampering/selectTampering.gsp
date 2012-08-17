<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Parameter Tampering Example</title>
		
	</head>
	<body>
<g:link uri="/${request.forwardURI.contains('secure')?'secure':'attacks'}/attacks/index">
	<img src="${createLinkTo(dir:'images',file:'back-icon.png')}" alt="Return to vulnerable section" class="back" />
</g:link>
<h1>How to Exploit Form Fields</h1>
<hr noshade="noshade"/>

	<p><b>General Goal(s):</b></p>
	<p>The user will be able to exploit a select field to obtain all users' orders.</p>
	<p>First, by clicking in the 'View Orders' button you will visualize all the orders 
	of the <b>j2ee</b> user.</p>
	<p>Then, you have to set the username parameter to the following value when you post 
	the form: <b>ACID</b></p>

<g:form name="pedido" uri="/${request.forwardURI.contains('secure')?'secure':'attacks'}/parameterTampering/tamperingResults" >
	<g:select name="username" from="${['j2ee']}" />
	<br /><g:submitButton value="View Orders" name="submit"/>
</g:form>

</body>
</html>