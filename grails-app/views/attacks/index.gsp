<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		
	</head>
	<body>
<g:link uri="/">
	<img src="${createLinkTo(dir:'images',file:'back-icon.png')}" alt="Return to examples page" class="back" />
</g:link>
<h1>Vulnerable Section</h1>
<hr noshade="noshade"/>

<h2>
	<g:link url="http://www.owasp.org/index.php/Web_Parameter_Tampering">Parameter Tampering</g:link>
</h2>
<p>
	Parameter tampering is a simple attack targeting the application business logic. This attack takes advantage of the fact that many programmers rely on hidden or fixed fields (such as a hidden tag in a form or a parameter in a URL) as the only security measure for certain operations. Attackers can easily modify these parameters to bypass the security mechanisms that rely on them.
</p>
<g:link uri="/${request.forwardURI.contains('secure')?'secure':'attacks'}/parameterTampering/selectTampering">
	<img src="${createLinkTo(dir:'images',file:'Play.png')}" class="play" />
	How to Exploit Select Form fields
</g:link>
<br />
<g:link uri="/${request.forwardURI.contains('secure')?'secure':'attacks'}/parameterTampering/hiddenTampering">
	<img src="${createLinkTo(dir:'images',file:'Play.png')}" class="play" />
	How to Exploit Hidden Form fields
</g:link>
<br />
<g:link uri="/${request.forwardURI.contains('secure')?'secure':'attacks'}/parameterTampering/linkTampering">
	<img src="${createLinkTo(dir:'images',file:'Play.png')}" class="play" />
	How to Exploit Link Parameters
</g:link>
</body>
</html>