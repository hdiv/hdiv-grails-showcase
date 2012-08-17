<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Parameter Tampering Example</title>
		
	</head>
	<body>
<g:link uri="/${request.forwardURI.contains('secure')?'secure':'attacks'}/parameterTampering/selectTampering">
	<img src="${createLinkTo(dir:'images',file:'back-icon.png')}" alt="Return to vulnerable section" class="back" />
</g:link>
<h1>How to Exploit Form Fields</h1>
<hr noshade="noshade"/>
	<center><font size="4"><b>"My" Orders</b></font></center>
	<table>
		<thead>
			<tr>
				<th>Pedido id</th>
				<th>Username</th>
				<th>Ship City</th>
				<th>Card Type</th>
			</tr>
		</thead>
		<tbody>
			<g:each var="pedido" in="${pedidos}">
				<tr>
					<td>${pedido.pedidoId}</td>
					<td>${pedido.username}</td>
					<td>${pedido.shipCity}</td>
					<td>${pedido.cardType}</td>
				</tr>
			</g:each>
		</tbody>
	</table>
	
</body>
</html>