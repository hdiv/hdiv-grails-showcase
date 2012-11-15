<!doctype html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>Injection Flaws Example</title>
</head>
<body>
	<g:link uri="/${request.forwardURI.contains('secure')?'secure':'attacks'}/attacks/index">
		<img src="${createLinkTo(dir:'images',file:'back-icon.png')}" alt="Return to vulnerable section" class="back" />
	</g:link>
	
	<h1>How to perform String SQL Injection</h1>
	
	<p><b>General Goal(s):</b></p>
	<p>The form below allows a user to view account values. Try to inject an SQL string that results 
	in all the accounts being displayed.</p>
	<p>First, you must insert the username <b>ACID</b>. You will only see the data related to the username ACID.</p>
	<p>Then, inserting the value <b>ACID' or '1'='1</b>, you will be able to see all the accounts.</p>
	
	<g:form name="order" uri="/${request.forwardURI.contains('secure')?'secure':'attacks'}/sqlInjection/results" >
		<g:renderErrors bean="${order}" />
		
		<g:textField name="username" />
		<g:submitButton value="View Orders" name="submit"/>
	</g:form>

</body>
</html>