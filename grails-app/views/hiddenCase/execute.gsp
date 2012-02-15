<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
	</head>
	<body>
		<g:link action="index">
			<img src="${resource(dir: 'images', file: 'back-icon.png')}"  alt="Return to examples page" class="back" />
		</g:link>
		<h1>How to Exploit Hidden Fields</h1>
		<hr noshade="noshade"/>
		<center><font size="4"><b>"My" Orders</b></font></center>
		<table align="center" border="1" cellspacing="2">
			<tr bgcolor="#CCCCCC">
				<td><b>User ID</b></td>
				<td><b>Status</b></td>
			</tr>
			<tr>
				<td>${params['userId']}</td>
				<td>${orderStatus[params['userId']]}</td>
			</tr>
		</table>
	</body>
</html>