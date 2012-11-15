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
		def orders = Order.findAll {username == theUsername};
		return [orders:orders]
	}
}
