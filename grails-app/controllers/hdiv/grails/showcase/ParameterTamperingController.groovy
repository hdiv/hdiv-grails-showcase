package hdiv.grails.showcase

class ParameterTamperingController {
	def index() {
	}
	def selectTampering() {
	}
	def hiddenTampering() {
	}
	def linkTampering() {
		
	}
	def tamperingResults() {
		def theUsername = params['username'];
		def pedidos = Pedido.findAll {username == theUsername};
		return [pedidos:pedidos]
	}
}
