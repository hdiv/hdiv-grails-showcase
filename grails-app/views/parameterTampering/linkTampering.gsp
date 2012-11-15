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
<h1>How to Exploit Link Parameters</h1>

	<p><b>General Goal(s):</b></p>
	<p>The user will be able to exploit a link parameter to obtain all users' orders.</p>
	<p>First, by clicking in the link you will visualize all the orders 
	of the <b>j2ee</b> user.</p>
	<p>Then, you have to set the username link parameter value to to <b>ACID</b> to view his orders.</p>
	<g:link mapping="tamperingResult" params='[section:"${request.forwardURI.contains('secure')?'secure':'attacks'}",username:"j2ee"]'>
		View Orders
	</g:link>
</body>
</html>