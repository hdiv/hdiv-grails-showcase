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
<h1>How to Exploit Hidden Form Fields</h1>

	<p><b>General Goal(s):</b></p>
	<p>The user will be able to exploit a hidden field to obtain all users' orders.</p>
	<p>First, by clicking in the 'View Orders' button you will visualize all the orders 
	of the <b>j2ee</b> user.</p>
	<p>Then, you have to set the username parameter to the following value when you post 
	the form: <b>ACID</b></p>

<g:form name="order" uri="/${request.forwardURI.contains('secure')?'secure':'attacks'}/parameterTampering/tamperingResults" >
	<g:hiddenField name="username" value="j2ee" />
	<g:submitButton value="View Orders" name="submit"/>
</g:form>

</body>
</html>