import hdiv.grails.showcase.Order;
class BootStrap {

	def init = { servletContext ->
		// Clear database
		Order.executeUpdate('delete from Order')
		
		// Init Orders
		new Order(orderId:"0",username:"j2ee",shipCity:"Palo Alto",cardType:"Visa").save(failOnError:true)
		new Order(orderId:"1",username:"j2ee",shipCity:"Palo Alto",cardType:"Visa").save(failOnError:true)
		new Order(orderId:"2",username:"ACID",shipCity:"California",cardType:"Visa").save(failOnError:true)
	}
	def destroy = {
	}
}
