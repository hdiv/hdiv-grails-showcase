<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
	</head>
	<body>
		<g:link controller="hdivExamples" action="index">
			<img src="${resource(dir: 'images', file: 'back-icon.png')}"  alt="Return to examples page" class="back" />
		</g:link>
	
		<h1>How to Exploit Form Fields</h1>
		<hr noshade="noshade"/>
		<p><b>General Goal(s):</b></p>
		<p>The user will be able to exploit a hidden field to obtain all users' orders.</p>
		<p>First, by clicking in the 'View Orders' button you will visualize all the orders of the <b>j2ee</b> user.</p>
		<p>Then, you have to set the username parameter to the following value when you post the form: <b>ACID</b></p>

			<g:form name="hiddenCase" action="execute">
				<g:hiddenField name="userId" value="ACID" />
				<g:submitButton name="submit" value="Submit" />
			</g:form>
	</body>
</html>