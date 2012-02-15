package hdiv.grails.showcase



import org.junit.*
import grails.test.mixin.*

@TestFor(OrderController)
@Mock(Order)
class OrderControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/order/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.orderInstanceList.size() == 0
        assert model.orderInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.orderInstance != null
    }

    void testSave() {
        controller.save()

        assert model.orderInstance != null
        assert view == '/order/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/order/show/1'
        assert controller.flash.message != null
        assert Order.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/order/list'

        populateValidParams(params)
        def order = new Order(params)

        assert order.save() != null

        params.id = order.id

        def model = controller.show()

        assert model.orderInstance == order
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/order/list'

        populateValidParams(params)
        def order = new Order(params)

        assert order.save() != null

        params.id = order.id

        def model = controller.edit()

        assert model.orderInstance == order
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/order/list'

        response.reset()

        populateValidParams(params)
        def order = new Order(params)

        assert order.save() != null

        // test invalid parameters in update
        params.id = order.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/order/edit"
        assert model.orderInstance != null

        order.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/order/show/$order.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        order.clearErrors()

        populateValidParams(params)
        params.id = order.id
        params.version = -1
        controller.update()

        assert view == "/order/edit"
        assert model.orderInstance != null
        assert model.orderInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/order/list'

        response.reset()

        populateValidParams(params)
        def order = new Order(params)

        assert order.save() != null
        assert Order.count() == 1

        params.id = order.id

        controller.delete()

        assert Order.count() == 0
        assert Order.get(order.id) == null
        assert response.redirectedUrl == '/order/list'
    }
}
