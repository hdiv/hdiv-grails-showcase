package hdiv.grails.showcase;

class Order {
	String orderId
	String username
	String shipCity
	String cardType

	static constraints = {
		orderId nullable: true
		username size: 4..15, blank: false
		shipCity nullable: true
		cardType nullable: true
	}

	static mapping = {  table 'my_order'  }
}