<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
	</head>
	<body>
		<a href="/hdiv-grails-showcase">			
			<img src="${resource(dir: 'images', file: 'back-icon.png')}"  alt="Return to examples page" class="back" />
		</a>
	
		<h1>Vulnerable Section</h1>
		<hr noshade="noshade" />
		<!--  Injection Flaws examples 
		<h2><a href="http://www.owasp.org/index.php/SQL_injection" class="link">Injection Flaws</a></h2>
		<p>SQL injection attacks represent a serious threat to any database-driven site.  The methods behind an attack are easy to learn and the damage caused can range from considerable to complete system compromise. Despite these risks an incredible number of systems on the internet are susceptible to this form of attack. </p>
		<p>Not only is it a threat easily instigated, it is also a threat that, with a little common-sense and forethought, can be almost totally prevented.<br></p>
		<p>It is always good practice to sanitize all input data, especially data that will used in OS command, scripts, and database queries.</p>
		<br />
		<a href="#">Unabailable</a>
		<br />-->		
		<!--  Parameter Tampering examples -->
		<h2><a href="http://www.owasp.org/index.php/Web_Parameter_Tampering" class="link">Parameter Tampering</a></h2>
		<p>Parameter tampering is a simple attack targeting the application business logic. This attack takes advantage of the fact that many programmers rely on hidden or fixed fields (such as a hidden tag in a form or a parameter in a URL) as the only security measure for certain operations. Attackers can easily modify these parameters to bypass the security mechanisms that rely on them.</p>
		<br />
		<g:link controller="hiddenCase" action="index">
			<img src="${resource(dir: 'images', file:'Play.png')}" class="play" />
			How to Exploit Hidden Form fields
		</g:link>

	</body>
</html>