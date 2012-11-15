<!doctype html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>Injection Flaws Example</title>
	</head>
<body>

	<g:link uri="/${request.forwardURI.contains('secure')?'secure':'attacks'}/sqlInjection/edit">
		<img src="${createLinkTo(dir:'images',file:'back-icon.png')}" alt="Return to vulnerable section" class="back" />
	</g:link>
	
	<h1>How to ExploitInjection Flaws</h1>

	<h2 class="subtitle">"My" Orders</h2>
	<table>
		<thead>
			<tr>
				<th>Order id</th>
				<th>Username</th>
				<th>Ship City</th>
				<th>Card Type</th>
			</tr>
		</thead>
		<tbody>
			<g:each var="order" in="${orders}">
				<tr>
					<td>${order.orderId}</td>
					<td>${order.username}</td>
					<td>${order.shipCity}</td>
					<td>${order.cardType}</td>
				</tr>
			</g:each>
		</tbody>
	</table>
	
</body>
</html>