import hdiv.grails.showcase.Pedido;
class BootStrap {

    def init = { servletContext ->
    	new Pedido(pedidoId:"0",username:"j2ee",shipCity:"Palo Alto",cardType:"Visa").save(failOnError:true)
    	new Pedido(pedidoId:"1",username:"j2ee",shipCity:"Palo Alto",cardType:"Visa").save(failOnError:true)
    	new Pedido(pedidoId:"2",username:"ACID",shipCity:"California",cardType:"Visa").save(failOnError:true)
    }
    def destroy = {
    }
}
