package hdiv.grails.showcase

class SqlInjectionController {
	def index() {
	}
	def edit() {
	}
	def results() {
		def order = new Order(params)
		if (!order.validate()) {
			render(view:'edit',model:[order:order])
			return
		}
		def orders = Order.executeQuery("from Order where username='" + order.username +"'")
		return [orders:orders]
	}
}
