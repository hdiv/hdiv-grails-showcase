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
	
	<!--  Parameter Tampering -->
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
	
	<!--  Injection Flaws examples -->
	<h2>
		<g:link url="https://www.owasp.org/index.php/SQL_Injection">Injection Flaws</g:link>
	</h2>
	<p>SQL injection attacks represent a serious threat to any database-driven site. 
	The methods behind an attack are easy to learn and the damage caused can range from considerable to 
	complete system compromise. Despite these risks an incredible number of systems on the internet are 
	susceptible to this form of attack. 
	</p><p>
	Not only is it a threat easily instigated, it is also a threat that, with a little common-sense and 
	forethought, can be almost totally prevented.
	</p><p>
	It is always good practice to sanitize all input data, especially data that will used in OS command, 
	scripts, and database queries.</p>
	<g:link uri="/${request.forwardURI.contains('secure')?'secure':'attacks'}/sqlInjection/edit">
		<img src="${createLinkTo(dir:'images',file:'Play.png')}" class="play" />
		How to perform String SQL Injection
	</g:link>
	
</body>
</html>